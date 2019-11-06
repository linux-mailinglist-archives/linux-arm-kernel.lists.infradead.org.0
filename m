Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C39CF10AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 08:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcjKxK3UkCtFvuvL6Sli64h6GOQN6CURejOt9Ee1dw4=; b=RDNOoijTyqOIrJ
	eZ5JNYMvxMb8iSzSOC6Oh/Nj6TqM3OcvW5b2DD05wCjIiOhKqM1nXjxIacJgNP8VkRfq/WFzgOEL5
	TPTikUJq/fHlZRWUIp5bKTcKt8NHMNJaKZdyqmDu2ho2s9MRjv8WkMFIiUnxvl11kpJz8FPK0pjzx
	1eiuCT735z4ngCL2k0DsCW+k31O1LU+C1iHRw9a45aho9YIIRcgzVlWlDH4nw9aik7H1roPLZKWNH
	PSigTWkSOGgpDzEyZw7q8sREGtuS3bpspMNy1AdBnHJoihR3d88T2ddqF76UJoVjWdjpXNKd/8nZW
	EZEksPjpVu+USgQUx3gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSGAx-0002WG-Va; Wed, 06 Nov 2019 07:56:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSGAp-0002Vg-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 07:56:17 +0000
Received: by mail-lj1-x243.google.com with SMTP id t5so24959634ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 23:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xweVifWZ/YqguIkP3wRFBeRke8fVrDKetgEyLrXZK4A=;
 b=SRkgLFaa63C9qmcFdcf/s/KAPgAENphVcMUoM+vz9BIEzbf8c06I0Y1Hb5KXR42LXI
 G+i3eaIvU5rZa0kOrwSOnHxSXGm7OyVoMHx/peFrsf/OMV0cjkz5laiG3DlkVHfPCESn
 Pq9m25d73Eymy1sG4V505XAYT460OEuZk3NdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xweVifWZ/YqguIkP3wRFBeRke8fVrDKetgEyLrXZK4A=;
 b=VjZjK0vKgxVeBF7Ayws1vPZPrcBVA+LKW6iKOvIfFNFpfd0Lg9DDnymgZq4nMUwKW8
 YPsOLOb9Z1yglN5PqOY7gynAKB36ZlK/fzpJnO1NkfnMohP4oB3T88RTf7qfTSJNcw99
 ICvu8pjE0v+VW1tJnd8K9+QojvqUtqIm2mF996RQF6pHlENQzpj9+ke9Kwxqgp+T+Ci7
 LqlM9dRF6z8HL21C3ZO6D8ZOFoWZVGO4GTnkuVPxgoLox+vStAHFbjaxLCQKcuMwOCLp
 orWxeRsVd8sZ4Q65oKQzffe1dHMRFWuFa2sMhSSsLRACGcE2xr9I8fiswSDXqe4LI3i7
 Iceg==
X-Gm-Message-State: APjAAAW8ZC8JhHuyZ1EtGPE43bLQZTm0mS9tgYInMMpgQC5FB0LLMkCt
 5Ch4mmUDjI9gU1X419oL4pHUvg==
X-Google-Smtp-Source: APXvYqx0UMAxK46d8rifJbbO0Iei8z4btT+kJJezWPrwvpREfmjRSXZQf51n+CDfByMCvypaqmMFbg==
X-Received: by 2002:a05:651c:105:: with SMTP id a5mr819866ljb.45.1573026973653; 
 Tue, 05 Nov 2019 23:56:13 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d27sm11001361lfb.3.2019.11.05.23.56.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 23:56:12 -0800 (PST)
Subject: Re: [PATCH v3 35/36] net/wan: make FSL_UCC_HDLC explicitly depend on
 PPC32
To: Qiang Zhao <qiang.zhao@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-36-linux@rasmusvillemoes.dk>
 <4e2ac670-2bf4-fb47-2130-c0120bcf0111@c-s.fr>
 <VE1PR04MB6687D4620E32176BDC120DBA8F620@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <24ea27b6-adea-cc74-f480-b68de163f531@rasmusvillemoes.dk>
 <VE1PR04MB67686E14A4E0D33C77B43EA6917E0@VE1PR04MB6768.eurprd04.prod.outlook.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <d8bf1d7f-b4c6-ef92-9fac-a3668ff37d8d@rasmusvillemoes.dk>
Date: Wed, 6 Nov 2019 08:56:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB67686E14A4E0D33C77B43EA6917E0@VE1PR04MB6768.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_235615_910713_21B40947 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Wood <oss@buserror.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/11/2019 07.16, Qiang Zhao wrote:

> 
> I tested your v3 patches on ls1043ardb which is arm64 for fsl_ucc_hdlc, it can work,
> Only it will put a compile warning, I also made a patch to fix it.
> I can send a patch to remove PPC32 dependency when I send my patch to support ARM64.
> Or I add my patch in your patchset.

Please send your patch (without whatever Kconfig hunk you needed to add)
with a proper changelog etc. If it looks reasonable (to me, reviewers of
the whole thing obviously also need to agree), I'll include it in my
series and drop adding the PPC32 addition to FSL_UCC_HDLC. Otherwise
I'll keep that and then you can later drop the PPC32 dependency.

Rasmus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
