Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37C5FDF25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 14:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNimMdmTCOZuRG9+2aM5VkRqQ2FmBVopN3XmjDjEgdQ=; b=MraKpIKsuP5kiY
	MFEI5jGtTriFH8XCxybTGPT9UzSWAO+jE4SNRqmk1EYqAF7ebh+/yNxRkHAbfQRuulZ2SZL2KRhEE
	UWVB4x7Fp6nMj7yadmXTu3pp1nVm8itZs5jIAfdz51WqIUKQr89MGM0mzc12cvh73I14Z44nHdKAL
	Sc2uAUu3DMhC7zBYCmp2ChIrI6Bva0/BYAzpKmu50+juWt7/OYYOfTtGJ1yR7UK8yETYk9FamjA0g
	iunlvEK69BQiARt2IlePJp8H8HfTWqHZ+uRQaOmFynZs3ZPXcHhQl+z/af6fv68wLo7Oh6RWMOHM+
	AqYObuxph6EzYmF2ryng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVbsC-0008WG-IZ; Fri, 15 Nov 2019 13:42:52 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbs0-0008VI-Q8
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 13:42:42 +0000
Received: by mail-lf1-x142.google.com with SMTP id d6so8081087lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 05:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7M8XWf+aSDuZ60G0e6vwA3UVsGqy52moHTICwgTGdKE=;
 b=Xma2EgzKd5UJeq5rjgYO/fzDuIC/Z9BgtHLjQs9+P5c/7/SXXE2ft7Hh+9GwYMfTE+
 9du2iMEIHbg/0YaeyOJHFdSyMe9GMWHFRsBrm9DXPfQ+JJIx7HZWZ8DNnGCQrqRN50pY
 8CiCBcoL8DRIdBmVshEqN4b0TeAtXiVOcIOLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7M8XWf+aSDuZ60G0e6vwA3UVsGqy52moHTICwgTGdKE=;
 b=dp77MQr5KIoudM4qU4t+cpmghSvhL9aeragoWJ1aFFQW7K/Njld4htEmu/Q0BvD5Qj
 xcoHcrwssHJw5Biu/BZ7ia609nW7cTXJYp8EZltmGgIpxdqXvVf8xU0BM19Z+vBNMTBX
 TgFawsRFSOVtq0ixzVYxuezT/1b6KZf3+kjZ/9skicZe0yQvUEt5WYCqDZ0+Uhpuv8sc
 9RvN9asC6k3Uky84+N3TB4rjE/NLm1YiPjJHQtC/vCNOR8piQQ0KkNdErz5JCFds9z/n
 u8U3tQgCufeKOS1Bu1s5BEUC8bxF1/vO4OeN8g/oCkdqbVlq4HGaE9EfzQAhKXxmPrTm
 vkhA==
X-Gm-Message-State: APjAAAUt4xOpJWgZW/mSGHglgiq6psGOLyyA+iwkR5G4k8DB+12XBjnm
 QtKS7e5hIEghyy2TwZUo6TUIpA==
X-Google-Smtp-Source: APXvYqwHN2Yvm0PLT+a7BaSRp11SLB5XySfnSHH3TF13kuNUSwKuiAUR9T+ZHUG0/JfvfbuuNjwNSA==
X-Received: by 2002:ac2:43a3:: with SMTP id t3mr11623097lfl.150.1573825355715; 
 Fri, 15 Nov 2019 05:42:35 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u4sm4063165ljj.87.2019.11.15.05.42.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Nov 2019 05:42:35 -0800 (PST)
Subject: Re: [PATCH v3 36/36] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
To: kbuild test robot <lkp@intel.com>
References: <20191101124210.14510-37-linux@rasmusvillemoes.dk>
 <201911152105.ojcD68ZC%lkp@intel.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <41765275-dbd5-406e-8ba1-bd0f92b737ee@rasmusvillemoes.dk>
Date: Fri, 15 Nov 2019 14:42:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <201911152105.ojcD68ZC%lkp@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_054240_850831_C0FDCD67 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/11/2019 14.31, kbuild test robot wrote:
> Hi Rasmus,
> 
> Thank you for the patch! Perhaps something to improve:

Hello kbuild

Thanks for your reports, but this has already been fixed. Is there some
way to indicate to the kbuild bot that it should stop using resources on
a specific patch set? There's really no point in the bot doing lots of
builds and sending out reports for a series that has already been
superseded - and reviewers might easily think that the report concerns
the latest revision. Perhaps something like

kbuild-ignore: <msg id of cover letter of revision N-1>

in the cover-letter of revision N? Or is there some smarter (automatic)
way of doing this?

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
