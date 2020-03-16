Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC8518748E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 22:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXFUdL9IXQHT8x3oPCMpW1Pb8+5RXVWnDxnbCDBTiXo=; b=HSvyy+pmZfF5eQ
	BI4CRMVWY9GgMYWXXq+hcgJ5CIZMGJPPYS5HuCgW1WhLTZVTz6+bhdskwVhYiyoxPFS3j4qxuU+8k
	upYXi6URc2norYWTee+tS0Lq57fiqQ+oPqWNOuK1vzSkW3R760c9VfuHlTXGc5mzrxUxokNSVymHm
	cYQ/bh40dDkhMAHzmZHhcd7NUlEo89UnSUK8BIp5oL3QT0GdJSJ1j+BpnN8cl++VKUTB1zla5OtcD
	oyBNfxL3s5Zfgg0s8sI3IJx5PcgtxRhvFJ3VmNHWxaXRl+vS2cfQkNRTGD8pumu59LNIbJTNuVVQe
	2ugI85/xjTubQHdXRXCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDx3U-0000xR-G7; Mon, 16 Mar 2020 21:13:48 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDx3K-0000wt-PB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 21:13:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id s1so1336792wrv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 14:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rA/inJ3N2dzQGtrL1M4Qr6g56ao5g6/q7NGAAMSseqI=;
 b=IIbbRosYhmoGbMSReB5jZmMjLoa7dNfhds1z14gzkwdNCqWcXtCVTdnAWdh411B9Xw
 Pf4v7dC2pqSP+PigEeewQpeiNq10Yt6zj9neGcC6dL72ZVmjZ9adFtKImkTFJN5byWrA
 YV5qo+jNI+wyc6KLos5URe77rW8L/15fw9fVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rA/inJ3N2dzQGtrL1M4Qr6g56ao5g6/q7NGAAMSseqI=;
 b=FOFbf132GO86FaiCp5UXIc8p40HvbStOTePuhS32K/kSXIPtZA40YVzxObUeQPsPex
 s8SxilIDCQImeFzCh1QJT5YOJzGPY0mK8pjM1gi0EuDBlywrK4oEft2RZRFVMMpBxEoE
 aEpsbY951S2/Yn3g16E+DkhgffK0LVcR0efJtyM9tBoM+aYxr1EFVqEuDUu0jVwM5NjG
 uG2s01j8o36PyBlgaVJDNl1A8tFZ3480+CKrhTosc6a6JbFWd+eh4nb93LErx6P18XLi
 5PwoIlQqVagNYXnoJKyGZKTX+QdzvCG1QUkDg7Wl3bHhT+PCZVfxjqAurJuLOJq0Eyrj
 ygPQ==
X-Gm-Message-State: ANhLgQ0XihySrWTDOCE0HQauVj5ZsZ5K+nTtBolnfmfJkHT9IVula/rI
 /0keIHzn5AAkiZCf2xPDxg8lQg==
X-Google-Smtp-Source: ADFU+vuuSfZ5TW55YNV+T4hvZhIZ2NQ7sFNgir1TJISFKzU6o6dDmFBAVVlV4Y0u5pMnIX54CY0E7A==
X-Received: by 2002:a5d:4b82:: with SMTP id b2mr1354253wrt.102.1584393216479; 
 Mon, 16 Mar 2020 14:13:36 -0700 (PDT)
Received: from [192.168.1.149] (ip-5-186-114-43.cgn.fibianet.dk.
 [5.186.114.43])
 by smtp.gmail.com with ESMTPSA id k133sm1209338wma.11.2020.03.16.14.13.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Mar 2020 14:13:36 -0700 (PDT)
Subject: Re: [PATCH 0/6] Fix sparse warnings for common qe library code
To: Li Yang <leoyang.li@nxp.com>, Timur Tabi <timur@kernel.org>,
 Zhao Qiang <qiang.zhao@nxp.com>
References: <20200312222827.17409-1-leoyang.li@nxp.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <766263cd-6b84-0c6b-d80a-d7f05fabd875@rasmusvillemoes.dk>
Date: Mon, 16 Mar 2020 22:13:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200312222827.17409-1-leoyang.li@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_141339_414851_2290C45A 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/03/2020 23.28, Li Yang wrote:
> The QE code was previously only supported on big-endian PowerPC systems
> that use the same endian as the QE device.  The endian transfer code is
> not really exercised.  Recent updates extended the QE drivers to
> little-endian ARM/ARM64 systems which makes the endian transfer really
> meaningful and hence triggered more sparse warnings for the endian
> mismatch.  Some of these endian issues are real issues that need to be
> fixed.
> 
> While at it, fixed some direct de-references of IO memory space and
> suppressed other __iomem address space mismatch issues by adding correct
> address space attributes.
> 
> Li Yang (6):
>   soc: fsl: qe: fix sparse warnings for qe.c
>   soc: fsl: qe: fix sparse warning for qe_common.c
>   soc: fsl: qe: fix sparse warnings for ucc.c
>   soc: fsl: qe: fix sparse warnings for qe_ic.c
>   soc: fsl: qe: fix sparse warnings for ucc_fast.c
>   soc: fsl: qe: fix sparse warnings for ucc_slow.c

Patches 2-5 should not change the generated code, whether LE or BE host,
as they merely add sparse annotations (please double-check with objdump
that that is indeed the case), so for those you may add

Reviewed-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>

I think patch 1 is also correct, but I don't have hardware to test it on
ATM. I'd like to see patch 6 split into smaller pieces, most of it seems
obviously correct.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
