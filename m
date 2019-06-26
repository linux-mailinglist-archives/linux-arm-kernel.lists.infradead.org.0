Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5735676F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 13:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZheuNoPV1lQ6V2YOp4yeCx7qkT5Dpg3ixS0rSm7EiNk=; b=i5h9KlWu+y+x5Y
	RST8L4NzJTlYIorhNMJM+BeEaedzSpwIHJNPWbd0U1v+piku29lXm8LBDva/od807Fud/cAOgp9mO
	FFJ3f68R2RMnqc3lg/vSCsdb/WmKH8FcRvBnbrADaVYDohaPRtIRQQlfy8ce8cXB50tjQj7SrTreS
	p+LGR6ZrVqxmtoIkHf4V9cKUJWPaDGOGqI0q9GjWjcCG88X5ZYvW77X49Ma5g7iVXGiOUl4BY2uM9
	GKng7u3NaG2tgi4ifFp1badgPvNObqE8WYgidxwn3mMbw3/0u7SctRjZPUn33QCW4VpzLoDPpnAG6
	Kiauklursr5knTE23U8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg5xO-0007nB-N6; Wed, 26 Jun 2019 11:19:18 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg5xF-0007mi-9y
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 11:19:10 +0000
Received: by mail-lj1-x243.google.com with SMTP id 205so1767234ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 04:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=AVMpKxe2p8Y00koF5Afa/fEzfYbR4vv73nY4wLLyVp8=;
 b=hLmM57z4wc92EsRmENpSDF005m/k+Y/cZr8gblqkxT5XYod6lXNHMqO6mucLJoLvTc
 n5T4EU+2IHvr9UXQ8XUK9iHozwoGhovxjGNAqagjkdKNveVrVdeGhhAz4g9PorOZd8Oc
 dfLEEkQYxn0jzQ0cHSMxuYfGWqL6Vp4F4hvL9Byn6cmNCyaqbRGoHXXJTh4yQAY2F0/1
 3zJqv5exxGQiqq9eWK83kvZ4atnK9E2c/LD0Kuh4F6+NQn9Py2Fk2NAPn3zerCDS/dyB
 LV3+G3EsK1a5hZ4qaGGqHs9S182oUZOdQ0I8xKOqmGGuEMLtZVONVw3kFWhcoLjXp2t1
 nlpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=AVMpKxe2p8Y00koF5Afa/fEzfYbR4vv73nY4wLLyVp8=;
 b=iUKAPM0aK1RXrkFMBv+RL8emgEVG9iytjPm+WzRLGmW+YWEzb2hiI3QUuH+aB0Bm1Q
 5yNRNSuTz6OA26y5VrPUHIZ8zjV/I602Fw+ldZz7YQhiHzvhpDpqMrnQR0PQPGznlm5i
 joPUM2cUa0pAnpGpLxZDdKN/X/j9/Q3D57qPbsNDBtmMyHrj4jfcsoGVNjReYtkIxzMB
 3S9E/sgXgkNcr/2stffkE0ymgwfYMCZlPoq7USCxYMhP+ihG5LSGNX0Lk2EqkfGN9c7Y
 u9bkzhX5HINRHiVhOjxSjyv9h2PWNyy8Epqk9uae1gzszjTYgPukyjgQsx6yAp8i63pr
 eOSQ==
X-Gm-Message-State: APjAAAXxJRBOwTRW15u4gp9RAUCDnhf7b2ubzP+npDUzHmAUTcY5q9QQ
 7ihXhvd8Flgi6NmzAoljKRw=
X-Google-Smtp-Source: APXvYqwjrve8BS31UumnoHZ93usQMoZGKW5BnXbF2qDHDoa+QW9cf0GsOFz/PPlz/4i/5bneKATAYg==
X-Received: by 2002:a2e:9f57:: with SMTP id v23mr2715325ljk.138.1561547947083; 
 Wed, 26 Jun 2019 04:19:07 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f1sm2752352ljk.86.2019.06.26.04.19.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 04:19:06 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH RFC v1 0/7] serial: imx: fix RTS and RTS/CTS handling
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561042073-617-1-git-send-email-sorganov@gmail.com>
 <20190626100041.a7hyyhubun6y2r2z@pengutronix.de>
Date: Wed, 26 Jun 2019 14:19:05 +0300
In-Reply-To: <20190626100041.a7hyyhubun6y2r2z@pengutronix.de> (Sascha Hauer's
 message of "Wed, 26 Jun 2019 12:00:41 +0200")
Message-ID: <87ef3gr3va.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_041909_348738_14083D46 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sasha,

Sascha Hauer <s.hauer@pengutronix.de> writes:
> Hi Sergey,
>
> On Thu, Jun 20, 2019 at 05:47:46PM +0300, Sergey Organov wrote:
>> The patches are not tested yet, so the RFC in the header. I'll re-roll
>> without RFC once Sasha Hauer tests them.
>> 
>> Sasha, in addition to already discussed fixes, I've also reordered 2
>> patches so that the sequence makes sense.
>> 
>
> I reviewed and tested this series, so when resending you can add my:
>
> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
> Tested-by: Sascha Hauer <s.hauer@pengutronix.de>

Thank you so much!

Have a nice day,

-- Sergey

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
