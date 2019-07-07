Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1095D6151B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 15:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OL5kuUSiRDLDbuGU36ivsYzgcj3UJ32u/90Fsnnm9QQ=; b=I0NYPKnMselqqg
	62En+aZOKMVCfUU8E9m8ZSrWHut7lRQyScwtmDM7WJyQXsnye+VfJ1+VdDbk1PRtm7bDaD4zdJp3d
	/FJ5zhH9fDgsHQ/K8UPMiX5axpVO5HEaFKG2Xws4/yNUqealMJ0mTvAPhqnjGnbgaW+Xt+Ei7hj8q
	umVwRQtnU99iS0VFVL2uGS8do0ku74opJx4piNrVu33fB/exfn761Yvi1Q4U0roDYQ0HBuT4NRWbx
	c5PeRQ5upyrejhgEElzpSIPI0DL/CmEouCgWmzQXjeZDoFNuzZmqPF59GbiDtT+JCQ3gFdX2flk+c
	XBTCC8Dd9qsxarrNN9Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk7KY-0003C5-UX; Sun, 07 Jul 2019 13:35:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk7KM-0003Bg-Dw; Sun, 07 Jul 2019 13:35:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 15734AC2D;
 Sun,  7 Jul 2019 13:35:37 +0000 (UTC)
Subject: Re: [PATCH 0/6] Add Banana Pi BPI-W2 basic support
To: Aleix Roca Nonell <kernelrocks@gmail.com>
References: <20190707132223.GA13340@arks.localdomain>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <c819915b-dd4b-0eb3-9e01-9c0cdcf861b0@suse.de>
Date: Sun, 7 Jul 2019 15:35:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190707132223.GA13340@arks.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_063538_619171_14662585 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, linux-realtek-soc@lists.infradead.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDcuMDcuMTkgdW0gMTU6MjIgc2NocmllYiBBbGVpeCBSb2NhIE5vbmVsbDoKPiBUaGlzIHBh
dGNoIHNlcmllcyBhZGRzIG1pbmltdW0gc3VwcG9ydCB0byBib290IGEgQmFuYW5hIFBpIEJQSS1X
Mi4KClRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMuCgpQbGVhc2UgQ0MgbGludXgtcmVhbHRl
ay1zb2NAbGlzdHMuaW5mcmFkZWFkLm9yZyBuZXh0IHRpbWUuCgpSZWdhcmRzLApBbmRyZWFzCgot
LSAKU1VTRSBMaW51eCBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFu
eQpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIx
Mjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
