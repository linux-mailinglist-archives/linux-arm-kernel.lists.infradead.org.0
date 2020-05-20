Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793B31DAA54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNsJLsMTW4QstBZmvJoqpL3UMw1cmBGMVc0vgaiIKCY=; b=UxoRlgM7GWlTq1
	OSnPMZx45/3CSEApyAgEVINse15rmKGSaHxlBLnMoNBzzgjmRaACFRZmBwG/Gon7ImfvRNjkNP/dH
	ymsibBBTIce3D7ZRyZKq9GC9yKfOGccMIERw89hqu9ISRDiOM4A5GBZD+yMMB26YRxIfSRyMRf/TS
	IIy/oFw5c9+0+3RV+N352+k01L4vyhZ0iRqrk20lNjpi27Ye1uvDV6BZiGwRlJ6tNlNGDBcnXjeVH
	1PXg6bQTowxtwM5i8XQWf94l3uZNXjMynCh0UTe/a92h6IkMnBeqpwGg8UxSzGxMUe5eG4c1+JCSa
	+PL6/fUwUA/X/tmzWGIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbHpK-0006pZ-VZ; Wed, 20 May 2020 06:03:38 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHpB-0006oV-5C
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:03:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589954605;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=pSXXxnX23N+Cj33l5NV3fLExfRAIBDF1x9HdRtzBo2c=;
 b=izfGordIG1xgCf+JzhDV47puL6X60pkccRHEjKh2PNLndB7hGFwhPqJnFcDyN9PSxz
 VVTfl3Djju1Omvj/Y7WQ6Zg2X9tJqGS6AnAl38CsqhSdPaH4pRyjMoXKBjAGVaKpDXyA
 CqoMu1DcblItgi9c6iuJXGqtjq4eCmWNSf8BpxLbp8vitFQVlEjP18RnIuOf9SfLeEuL
 U2l8zVTs2t5VnbEfJ6/12AWQYiTlfLB6dt0dm/+ntolBkV8SOAiINWSa0AaSs8f1knoG
 qVEzjAIKe/1Bb2AdtW1qByk5CELJjj7KKDmeAnF+LbSBUK6KiN13E1aCV97J+H1QMMGx
 avXg==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbI/Sc5g=="
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.7.0 DYNA|AUTH)
 with ESMTPSA id k09005w4K63O2y2
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 20 May 2020 08:03:24 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
Date: Wed, 20 May 2020 08:03:23 +0200
Message-ID: <16565072.6IxHkjxkAd@tauon.chronox.de>
In-Reply-To: <20200519190211.76855-1-ardb@kernel.org>
References: <20200519190211.76855-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_230329_786383_AAF1C9FB 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:10 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ebiggers@kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 19. Mai 2020, 21:02:09 CEST schrieb Ard Biesheuvel:

Hi Ard,

> Stephan reports that the arm64 implementation of cts(cbc(aes)) deviates
> from the generic implementation in what it returns as the output IV. So
> fix this, and add some test vectors to catch other non-compliant
> implementations.
> 
> Stephan, could you provide a reference for the NIST validation tool and
> how it flags this behaviour as non-compliant? Thanks.

The test definition that identified the inconsistent behavior is specified 
with [1]. Note, this testing is intended to become an RFC standard.

To facilitate that testing, NIST offers an internet service, the ACVP server, 
that allows obtaining test vectors and uploading responses. You see the large 
number of concluded testing with [2]. A particular completion of the CTS 
testing I finished yesterday is given in [3]. That particular testing was also 
performed on an ARM system with CE where the issue was detected.

I am performing the testing with [4] that has an extension to test the kernel 
crypto API.

[1] https://github.com/usnistgov/ACVP/blob/master/artifacts/draft-celi-acvp-block-ciph-00.txt#L366

[2] https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/
validation-search?searchMode=validation&family=1&productType=-1&ipp=25

[3] https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/
details?validation=32608

[4] https://github.com/smuellerDD/acvpparser
> 
> Cc: Stephan Mueller <smueller@chronox.de>
> 
> Ard Biesheuvel (2):
>   crypto: arm64/aes - align output IV with generic CBC-CTS driver
>   crypto: testmgr - add output IVs for AES-CBC with ciphertext stealing
> 
>  arch/arm64/crypto/aes-modes.S |  2 ++
>  crypto/testmgr.h              | 12 ++++++++++++
>  2 files changed, 14 insertions(+)


Ciao
Stephan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
