Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB67F15F812
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 21:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KiHZ3260h2knLP3dbc1RgB+nfIWFsEPlCCk1R0kA85A=; b=P9QOWLbcoY7S5U
	xleD2S5TFPE+ihje+4s1Z+lMLel6qVtdNCG1kwsR5N+KcxlzUr7+hH/82HGosCkEtAef/m1wbNULm
	nwmVZbtI9YGhOhqS91/UR7BcEd05VkHRs2b7xaAEOry4bYlC3Y7khjLn1YPr2C8CmnBzb2huYxmY3
	MSjRSKeREepGmHMXlRJEP+ePfBRuOHjMuW/PiGCvMiEkk267aeOsmfV1IaGGfypgZtgWON8cUedOx
	MC9rTcVxVtBz4rEqnWMrVsWc4m6F60/rXKFg1vHGNCoj1A38dbfyg5Lt9HX2BcPIgNeu8TEV9bCQ+
	G+FdU2j6y4YvizTKdd8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2hu1-0007U2-6G; Fri, 14 Feb 2020 20:49:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2hts-0007TH-ET
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 20:49:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id t3so12464286wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 12:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BG/k+1n242XmQ392+l/+QM8WpV3CVNW+mSgRrXUNaOk=;
 b=SarBqj+oUxptfwZyuPnoE9f5TdNLgDfCHQUMJ/hlsyT34Ix7OOciJH7CP+Ir3b2GzM
 9zb3YRPgjRMX5OrfVnsaU+NWX65BwvyfNy/jlvmnZvXwHmUhKJyKKN4i2ekuDyB+AUaN
 m0OvEgnVfVGPMiW73eqXyVcabZ6/knDSWdzPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BG/k+1n242XmQ392+l/+QM8WpV3CVNW+mSgRrXUNaOk=;
 b=YeHaqg6wUKl9B4+mAMLoASgZ4SrRT+4p0u7V9NNJYWQEWZP3SfiNktvkvcVcgmd2An
 zgD6EejqwLkBkj4GsMR0pF3iPmKAiEIW/g6rB4SN2boiG8p3kVxDbHXuK3w3m40acw8P
 xTWnDPDSEFYmjOlZHELovakxchUqPgC3Q6KNHio3UVFsU+jT0q4DqphHSIZ6AoWxTygG
 kNobHqPyu2ZZyD7+Lqi0yTp98moBRE+qJLS6EEkWPFdAhF9/nR5EujMwD8JNQHmtNlPm
 Z8lLsgEUVFqDYYX4uzpSjZpBZbxExztFoSCXDgRT8P35rlxruloknuagsuPWVaC68ujL
 l2iw==
X-Gm-Message-State: APjAAAXhWKlgU39/Ep8oxtxvrabuQONAJqoVS5NhZb9klSSMlulu5Pb+
 RvRSG5UVBYocNgikEaJe25Posw==
X-Google-Smtp-Source: APXvYqxncTdduvArrIOwd2nDXfNPYclGCAutEyIXX9NPCJWgKiNMBPvLCR/gffpuMOaRVYxDiBFUkg==
X-Received: by 2002:adf:e74a:: with SMTP id c10mr6152109wrn.254.1581713361497; 
 Fri, 14 Feb 2020 12:49:21 -0800 (PST)
Received: from [192.168.1.149] (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id r6sm8400054wrp.95.2020.02.14.12.49.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Feb 2020 12:49:20 -0800 (PST)
Subject: Re: [PATCH AUTOSEL 4.9 003/141] soc: fsl: qe: change return type of
 cpm_muram_alloc() to s32
To: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20200214162122.19794-1-sashal@kernel.org>
 <20200214162122.19794-3-sashal@kernel.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <a920b57f-ad9e-5c25-3981-0462febd952a@rasmusvillemoes.dk>
Date: Fri, 14 Feb 2020 21:49:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200214162122.19794-3-sashal@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_124924_635888_F5C92DAA 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Timur Tabi <timur@kernel.org>,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/02/2020 17.19, Sasha Levin wrote:
> From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> 
> [ Upstream commit 800cd6fb76f0ec7711deb72a86c924db1ae42648 ]

Hmm. Please note that these two autosel patches were part of a giant
48-patch series. While not all depending on each other, there are
definitely some dependencies, and between 800cd6fb76f0 and 148587a59f6b
there is e.g. be2e9415f8b3 which changes the type used to store the
return value from cpm_muram_alloc(), and a whole lot of other
cpm_muram_alloc() refactorings and cleanups - one of which
(b6231ea2b3c6) caused a regression on ppc 8xx.

So I think taking just these two might not work as expected, but taking
even more from that series is quite error-prone. Unless someone speaks
up and explicitly points out and verifies some specific subset of the
patches for a specific stable tree, I think they should not be added to
any -stable kernel.

[FWIW, we use the whole series backported to 4.19.y on both arm and ppc
platforms, but as the b6231ea2b3c6 case showed, that doesn't really
prove there are no problems cherry-picking these].

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
