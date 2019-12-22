Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0722D128F20
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 18:43:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zqkOdDnygI/wlMxCZngrWHBBdj02eceus3pofvNKQE=; b=jqnJKTqbS7lg3Z
	4Ut1jOFCG2bpMkTCxiaPr1033a7+jxKCsG+xA//1vWI3xz7nCM8dZbmTIkVewmknF5E6MBf+ibE6M
	wXazipQ/t0wBKiXToTLSzjShiFBbrWOxv4pRrArQekYMyMnm39l+utl7RXEwoa4L6c6rA2O2T/Yzw
	KjfHxcEHl7WJHtHK27G6pu2SWMhlZUm7ig69LpDOPIRAmfEkIL+GOjkTQ256mB8/r70YHVjShRZ3G
	S2J4slYChqbM1bseYqJq3qIdcEQsliIqXxLLyGgh2LPRXYUydAiCN2U+1rR2XuzBis9NFkIoMPKlp
	JiwlYNZ/PdzRyadFhYhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij5G3-0005iZ-WF; Sun, 22 Dec 2019 17:43:12 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij5Fv-0005hv-3Z
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 17:43:04 +0000
Received: by mail-io1-xd2a.google.com with SMTP id c16so12724830ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 09:43:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3QXEBHKU/LB1iiDp/zcMNr6eHfoj8s9pKx9O7xAvz4I=;
 b=Uh8AwjmyHmHNfIAuE42HV+aYzIViXpaRH7eN2qrJLEaexFijHEnU4ErU5uPmEoDOjH
 DuASs2LooE2RyySVRF037/epEY5D3Z1ouIhOA11wXfSAW1kTLvCBBZdsBKJn/Ekl0X94
 6koLKwsLkBZO/iXtAE8MktBxb3llTynwHfZJ2AYknWhlUvcvlUfdxKOjXnQoBxlqdedM
 VDm9Eh2GBSTLyp5DBoi1MLBva5AcfJXUOponC1+7SOmXJ0NF9LPD6/YvjfYSJ0rwkLxy
 F+PGF7zUNFZJBJZGhDSSMBCYsoBrhtaO8lkDOq7OytaDRZwX0WKC2RWRdVdb1NthpvHO
 YJnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3QXEBHKU/LB1iiDp/zcMNr6eHfoj8s9pKx9O7xAvz4I=;
 b=H6RcU8rhjxAIAUKLeYmCbhkGSoONpFU6ePcp3TLHrJjD8sV2j/5m/AIishCPR4p8n/
 18U8l84+6Gn8N9mwgaVHlf7uuwe3eEr+ZF38QEwtBFQE8djYJONUrhPYZcvCKWK9g2kP
 5290dsThW2frRjgJTkETauXnzGhlvFU8P/UdMEdXy7OUSuasGwxNK6v1EUHr6f03dpSr
 lsu9X+I5RaxHkc39h88lpqBwa3lIAnCFkDSEn7Kg1NatFfFOWgT7uTleeCOAB+oQyzZQ
 V14loAcEFo04kDFgg4ksej57YEGiVnPcEQJlflx9xmPgOzjPEoVqi34o6r/7TBvAipmb
 fQxQ==
X-Gm-Message-State: APjAAAUNFL9HiWdOT6QPdOTh/wGOQmJd1luAQ3nrrhh08iDjssKlYVNr
 P1YaQsqrjTP01Y7+isfw4D1xdRomI0Q6hoqIcNQ=
X-Google-Smtp-Source: APXvYqzBWA9in76G7bQs3kG+VdaKT1n50iAYQKSWWs0bg4iHRVOE63wih07E0eGxG8YRWphMlSn7GQjHQ28DWUUPGkw=
X-Received: by 2002:a5d:9eda:: with SMTP id a26mr18039071ioe.238.1577036581972; 
 Sun, 22 Dec 2019 09:43:01 -0800 (PST)
MIME-Version: 1.0
References: <20191221181855.31380-1-tiny.windzz@gmail.com>
 <CAGTfZH1aObSb5oWnVzp_WaGALFfC9VQpRKQ+AWTauPVL7VPOSg@mail.gmail.com>
In-Reply-To: <CAGTfZH1aObSb5oWnVzp_WaGALFfC9VQpRKQ+AWTauPVL7VPOSg@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Mon, 23 Dec 2019 01:42:50 +0800
Message-ID: <CAEExFWs_UguSmPqHLZ02LVPmUBMcKC8vpwJ=DGxW6ve6JNhMVA@mail.gmail.com>
Subject: Re: [PATCH 1/2] PM / devfreq: rk3399_dmc: Add missing
 devfreq_event_disable_edev
To: Chanwoo Choi <chanwoo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_094303_145606_DCAF35C2 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2 has been sent.

Thx,
Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
