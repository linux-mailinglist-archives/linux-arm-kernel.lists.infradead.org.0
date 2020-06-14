Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE101F8B20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 00:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJQLMDSlApoRdlb2Fy1wrtSAAcCM9B5LYGHwtgq81AU=; b=rh1FxEYdquwhD5
	MAgpqouIAATuUfiSIyuFKaGzXga4twq2UoP8NmY2I+62WHeau9juYq3uH6xAB2mIa4ZayPCfFtPZO
	Baxna8CBkXNheQEtGH2WfbjLD/Yrj13+VlePvfCj9Lv2KT77xwD1s6aEeCbg9/mPseLNPstIHc+be
	phhqU+dD5dNVsuLKpMc5xwnF8SVOFBIE0h31Dc/hIn6P5RjWutbUBsWh399JsZ9MLoMIQQL9A5Mc/
	gbGmhj3Irp/pt7UJ7c4nCRUxWkkQkYMz+eHTnC0TUvYnpj/ynjxEo5ia0ljgeKyuIfB8YrizaynKo
	9wYleoI4MbOkRRsVqOsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkb7T-0003UA-Fx; Sun, 14 Jun 2020 22:28:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkb7J-0003TX-8R
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 22:28:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id x13so15165394wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 15:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=trQHcuohLtyUSpNm7aV0Du6sP39QEoJjS3ozq1EOQr0=;
 b=gjdbMtFjuioL5GRdxYSTTEKGL9MnqKryVULnRrQz5h0uvmtc3qTj3BND4oaS5qNk2e
 5TVNLyp/WnB80FoaIAMn1fDOJk/nF656k73U5r24E/QsrpeRqXdt7uww1MFSJcvXXwGq
 TpDYGRlLJ3wTWRhgW/QBkOBbmY082uBbVXavlo4CWqnFmwBQsZ9jkiPUnNcrEgL/ikKJ
 7i48eyl/IpsYUu0x3y5iROpEe+eB3jBOvIdrJAHsbfq8ajG6GP3nZE4o/uniBeZgV/rq
 RXSC3J7LhkW1hnDztSg7VXYRO3iZvE7A+azidmUzH/nzdPanaDwjMeH1gduiqOsX7lEV
 FzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=trQHcuohLtyUSpNm7aV0Du6sP39QEoJjS3ozq1EOQr0=;
 b=Dl3SWTEeeNZD+SuL9afWzjpgRITYxKTI87J4rOL55tMr//FSV5yb12n5TTmzFBe6Wi
 W8ynKRfiH9bSZuxsa0f1nIrmZQd3sCQwFwvvsosRxUgpWh8XSj4wSS+7P7JULDXpPrv1
 Si1tkcNYYAvDMcxiiixxQicTUQvVzcv2K3yt84PjkZEXhf85UBq2U4WmtXQMu/Fk0yb3
 pq561NzKiU0TtACYvuEuntnLbRSDJ0YzbUEBONpYF0Jb55bz1DZSd6OWtn+rf37rbpPr
 V4hyKm+noZSqHaPUSrO1HI1Zc9AYr4Xi4tYG2LBtQCdzaC3B3nbhIC+ECulkePlYT1FZ
 2/pg==
X-Gm-Message-State: AOAM531xqMa2TB5whHFyEmyUORJmMVojE615apnlnQmcThZmi15239V4
 I8gZTf9xDAnap4+9BDHNFfgdrTB3
X-Google-Smtp-Source: ABdhPJwfPKToAg7dRk6HHsvr8GhxJHa5n0GAnA8K67zHHAFEKSLniMj7mKWryHBKbc953G1ikG+rzQ==
X-Received: by 2002:a5d:500d:: with SMTP id e13mr27419008wrt.150.1592173715910; 
 Sun, 14 Jun 2020 15:28:35 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 f11sm21254064wrj.2.2020.06.14.15.28.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Jun 2020 15:28:35 -0700 (PDT)
Subject: Re: [PATCH 2/3] ARM: dts: NSP: Correct amac_base lengths, mailbox reg
 and add amac3
To: Matthew Hagan <mnhagan88@gmail.com>
References: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
 <d638e006713d82d1a6af4bdbcfa516f425264bf6.1591719237.git.mnhagan88@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c08a06a8-de71-d1cd-541d-2e15a23f130a@gmail.com>
Date: Sun, 14 Jun 2020 15:28:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <d638e006713d82d1a6af4bdbcfa516f425264bf6.1591719237.git.mnhagan88@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_152841_301880_2C6434ED 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 9:58 AM, Matthew Hagan wrote:
> According to gmac/src/et/sys/et_linux.c, IORESOURCE_MEM end address for each
> mac is IPROC_GMACx_REG_BASE+0xbff.

The datasheet shows an entire GMAC to end at 0x1000 from its base offset
which is likely what was used to construct this DTS, I do not believe
this is a functional change, and if we look at the register details, the
last register starts at 0xb44 so 0xc00 is giving a little bit of
headroom. In practice it does not change anything since you are still
going to need a full 4KB page frame to map the registers.

> 
> The FA2 mailbox is specified at 0x18025000 but should actually be 0x18025c00,
> length 0x400 according to socregs_nsp.h and board_bu.c. amac3 is at 25000.

Yes, FA2 definitively start 0x18025c00, and ends 0x400 later, so I did
split this patch in three patches:

- one that fixes the FA2 base address, which can be queued to stable
kernel branches
- one that changes the AMAC register size
- one that adds the AMAC3

Such that the first patch can be queued for -stable fixes, whereas the
other two, not being functional changes are candidates for devicetree/next.

Result here:

https://github.com/Broadcom/stblinux/commits/devicetree/next

Thanks!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
