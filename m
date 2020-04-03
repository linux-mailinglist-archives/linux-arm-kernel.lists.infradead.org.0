Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B9819D5EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpaTSnYDFjnsObzL/48St4t1GXKRA9x6h3BCTFoxCPM=; b=WT3LKN/7/m3JTF
	VqEB9Ytsf4zlDN/J81ILePKsNxvcVkM0l/zDHHgD+zTji9gCD9cUdOHN2FBUkhyHZNzX9dvYbrun0
	UDU0XZvSGOMcm/dPfT3vi73NZ8DHwsRZsFsn7RtGrWYRLuz5IfWzbTCU6ff3pMy3uCKmbbLPDRzPZ
	LlUWI09EY7auJ+1Uhlavovc+lhvYgBFQ6E33E2IyT2SRtKlfXG8lGr3TWqYHDgPrPU8PYwamG+jko
	TCdWnMUypvHCyjzF3V5Fkz/A+s8OGgKVP+7gZJEgJ4/F4Wi0fUyfC8Pd7/oHTqn41lEOPamRWHUFO
	qKm9TaLEYzUpq6Qva9Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKfl-00041W-TR; Fri, 03 Apr 2020 11:39:41 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKfe-000419-SU
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 11:39:36 +0000
Received: by mail-ed1-f65.google.com with SMTP id i7so8922128edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 04:39:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UKKPCRgqOm2anwGdxhjT+1W/zjQgQoWsKsTzbih7afk=;
 b=aGsdeVi/6N0z+8Obzz2P2/M0pr3uXM5GthRvPBuqcY7ME1AJzoH7bkRsp5eKPgemlT
 QBnwHNxo5HQKndI7WujmLincMlUpg/Iva2RUp0rDNddPdZL0tAlRj2Q7OgpZ60IAgOx/
 VDsutW+QsIUQioGgBtmNizy7WmjIvewDnjRm3C3Md1BCC/ZK76U1vj/BJNDNAfsE291A
 Wv50WfGhobwt3WXJjDZDa/vLL3p2ohlWGvM8HRATg4DnAQGybEAh8nXTone9V4ZYrUri
 LKErdtLQHabrJbez6wtG/B/rP3rNvMYTS34x97TgGdvAzL9bf7L//kokGBZqNGZKKrey
 RQZQ==
X-Gm-Message-State: AGi0PuYaLVEJKs504bsq8kI2nw8/Gnyk+4k1K6Ljy11omOII6rYszc0I
 Fw2PtFDF48iMTmI7+e/AcEo=
X-Google-Smtp-Source: APiQypIFfUmjJ6MKsEttuYiNjXdHs3Tt9Cih39BKeATM+aTzjF/Fk/3pMfwKnIQQJinSpqgNPABv9w==
X-Received: by 2002:a17:906:1001:: with SMTP id
 1mr7947398ejm.267.1585913973645; 
 Fri, 03 Apr 2020 04:39:33 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id l19sm1609707ejn.31.2020.04.03.04.39.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 04:39:32 -0700 (PDT)
Date: Fri, 3 Apr 2020 13:39:25 +0200
From: 'Krzysztof Kozlowski' <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v3] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200403113925.GA4957@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403102049epcas2p1d1fe95160b7f37609a8b1710c196cdd8@epcas2p1.samsung.com>
 <20200403102041.22015-1-hyunki00.koo@samsung.com>
 <20200403104744.GA29385@kozik-lap>
 <005601d609a8$d3243710$796ca530$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <005601d609a8$d3243710$796ca530$@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_043934_918720_C698936C 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri Slaby' <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 08:12:55PM +0900, Hyunki Koo wrote:
> On Thu, Apr 02, 2020 at 7:48:38PM +0900, Krzysztof Kozlowski
> > On Fri, Apr 03, 2020 at 07:20:41PM +0900, Hyunki Koo wrote:
> > > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> > >
> > > This is required for some newer SoCs.
> > >
> > > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > > ---
> > > v3: change rd_regl to rd_reg in line 954 for backward compatibility.
> > 
> > I cannot find this change against v2.
> Okay, I will add all changes.

No, I mean, I cannot find the change rd_regl->rd_reg around line 954.
There was no changes around line 954 in v2.


Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
