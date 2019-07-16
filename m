Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ED06A3F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLVaIQ89a1o2k5p/M3HlgaM90pqySVCQTNZbduOzT6M=; b=oZbC6CE40W+JKH
	JsEfEWDTN7qzJU1/9LwX6t5VyyhtqTaJfA0HziSIE4hONwQTY80FPVs+5mt6JS6W11nB4CN0tw7cT
	ZaX3197c2FHA+WI7ocb3BahnhwETllPMAjN5EnZVh2GuCSHIrDXDvg9WLcaL9PAZOqTknF2L6y8ca
	ks05HtkKMoBtafJTDM2DqnHMF++B+V72P/4Bzwa0gRL5YeWUflzU8mWAe99k+C9mhJRmp9KqxNumi
	ZnrYfwe5YZPyghSJ79i6PTNtl2sLGj4tO1hotoUPxVl4v2fI4fmdFAejKo5Tc57UeD/TsznK05wLk
	gJ1eqqaXGMW8MMqqqPpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIuJ-0003Kv-Rh; Tue, 16 Jul 2019 08:33:55 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIu4-0003JS-J5
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:33:42 +0000
Received: by mail-io1-xd44.google.com with SMTP id o9so38661844iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 01:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vzap+4xNNS/hHS/OOE+FonbCO2y8T5Sdhg9a7mHxxZc=;
 b=AaPIi+ZVWCk/ycH5zSap9Rfc6OBIq8nWE4hDYFCzrfkpayybwdWvEMTHnmCQG971mx
 9CtvU5rGuw2gVobtAw8Mq/PnDLZ+pUwo3H94CiyLluMRjG2ZWD/fxPTqjgpKNbXCUz3V
 /lanFrBrhxNZHcHw3VDagNcDaRqqNL46FP6517DmjB6RXG6oRWdwyUye+YtndjdHt1nA
 OaniCWCE/qlkdYf1FPNL9lXF5e5kwCxNNE4tpuPNLr5JyGTL4mVE5RD4BSEm3a9YhNQR
 F6aF2y6am9XnIv+bEyE28koSvp+1zQonYZc4NUydXFlRNqjZjpEL1Af33v0CK0JP3I7Y
 3OYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vzap+4xNNS/hHS/OOE+FonbCO2y8T5Sdhg9a7mHxxZc=;
 b=mgpTmccPdXtmj/IFPN1uYOgsP9DTFx5cfCKJ4b1KxX3j7HnqmMBiQLVhjhNWVcCAFt
 zjxvC+di1PYwR6S+j+MMAY2Pz/et58a+h+vL3wimVL6dTgxr5ODJVxPyGN7tuN1Oei/C
 P69uZxk2q6aeatadUe3s2ETSg8MpuiGta110tPDUhhKRWpqtl3dXVlMOFO2eteeCjKYN
 KxwZXIfTq/dIDxpIBKPX4iRqi4Msemvm1uc9aDdaVZA7YNWv5kphCutQU14N49KyCZlo
 ehCw/XF3uX7s1irR+F+j4XUzsF8JCHCRhAjOq5C2xPfVDmMg8Qmoi2B2V2nhaS1SOG7f
 6EFA==
X-Gm-Message-State: APjAAAVi8U4XVhF/b32Zir7xOuv8Eyn13CiU4Ai2mtg+hrtuIkUQp6iE
 CTNQB45zBEx4eplrZQcVMHmCrqF2/wJ+sQfZpHo=
X-Google-Smtp-Source: APXvYqya0V5jarXyUeFdaG8e6dAJp0uRcbmGkv63/kgCGx/E6oESR+tWIfI7iA022SDAuIC6+cpN6bRaSLxuJRf8wpY=
X-Received: by 2002:a02:7f15:: with SMTP id r21mr34328068jac.120.1563266019706; 
 Tue, 16 Jul 2019 01:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <1563200177-8380-1-git-send-email-jaz@semihalf.com>
 <20190715143046.r3ja32rfntagqrqr@shell.armlinux.org.uk>
In-Reply-To: <20190715143046.r3ja32rfntagqrqr@shell.armlinux.org.uk>
From: Grzegorz Jaszczyk <jaz@semihalf.com>
Date: Tue, 16 Jul 2019 10:33:28 +0200
Message-ID: <CAH76GKNKLm8y1PsF3uSiUpqDqh28XEepnkCAM_69Yp=vjHsn6w@mail.gmail.com>
Subject: Re: [PATCH] PCI: pci-bridge-emul: fix big-endian support
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_013341_366462_1DD3F820 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lorenzo.pieralisi@arm.com, linux-pci@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbAoKcG9uLiwgMTUgbGlwIDIwMTkgbyAxNjozMCBSdXNzZWxsIEtpbmcgLSBBUk0g
TGludXggYWRtaW4KPGxpbnV4QGFybWxpbnV4Lm9yZy51az4gbmFwaXNhxYIoYSk6Cj4gVGhpcyBp
cyBpbnN1ZmZpY2llbnQgLSBwY2ktYnJpZGdlLWVtdWwuaCBuZWVkcyB0byBiZSBmaXhlZCB1cCB0
byB1c2UKPiBfX2xlMzIgYW5kIF9fbGUxNi4KPgo+IEl0IGlzIGEgZ29vZCBpZGVhIHRvIGNoZWNr
IHN1Y2ggY2hhbmdlcyB3aXRoIHNwYXJzZSAtIGEgdG9vbCBvcmlnaW5hbGx5Cj4gd3JpdHRlbiBi
eSBMaW51cywgd2hpY2ggaXMgYWJsZSB0byBkZXRlY3QgaW5jb3JyZWN0IGVuZGlhbiBhY2Nlc3Nl
cwo+IChpb3csIGFjY2VzcyB0byBMRSBtZW1iZXJzIHdpdGhvdXQgdXNpbmcgYSBMRSBhY2Nlc3Nv
ci4pICBTdWNoIGNoZWNrcwo+IHJlbHkgb24gdXNpbmcgdGhlIHJpZ2h0IHR5cGVzLgoKVGhhbmsg
eW91IGZvciBwb2ludGluZyB0aGlzIG91dCAtIGl0IGlzIHJlYWxseSB1c2VmdWxseSB0b29sLiBJ
IHdpbGwKc2VuZCB2MiBzb29uLgoKcmVnYXJkcywKR3J6ZWdvcnoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
