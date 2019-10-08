Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A40ACF8BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VgIS+fKtaoDk3n19ToOu0ffPn7adT7Y8aMMMzcAOLw=; b=GwDhWiCI/JoKvj
	MYNtuscuHVExtPVXGSMjolpaSdA3bgirpElycr1HJSwdBUTQLhV06ylP+kUQyUB/t1/rZc2q51MZj
	wGN5fk6mTPSoDBotLaYMdRcMwt9iprp4eMjY6MbhNoxI3rUxjF9wp/4n45yE/iD5UuW+1YYhthdfX
	SLQq9+hWSi74xbYEGnZybjJtqpbldUf4SnZP0tclEZbf3f4yyGDyor0YnkDd5ITH6hIk4OFAWYAwe
	LvLhoTnIQpfW0BeSkblBMrsBt8vlZU0wCVbckubGHNCLHQvzf9eH34ea7k0gJ96PpQmBvZURHIC8e
	L3ipIpaOf1GXHwV8lR3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHntN-0003gW-QS; Tue, 08 Oct 2019 11:43:01 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHntC-0003em-CN
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:42:51 +0000
Received: by mail-qk1-x742.google.com with SMTP id u184so16347029qkd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 04:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=3JJSHu9FsmPxAujVouhMDsGNkk6sBiZ/QmGwiiONFB4=;
 b=ft1ONni5tzPFm7vpcdDKsmvlZcXVOpt9il2RREKA5mDs/iXlDAWt12DMHLjZ40/uLa
 W67IwIJbw0KNkBqIv4mqZyBbImfLaMu0nTzVSEFCPsLy8grCpjixyboBqo9XE2IH4tVd
 hGjwfHEsKsBMR5ENiBLo+UUOk6omMbdmasKrLXV3aEjP9VAjG1cdDLfdFo7qNYcJWoed
 gfSiltjTPQqJJzwlxjca6gnd4c0n7twpHnJ+3DTdcwWAOFKCl2oc0uPUxGLRuRIDyNjK
 5dSd5S5fEJI+6sKBBNyzSXaremLmFju9Z/ytR3YTieR9ADzSZj1Br7Zm7qBD0AloT/mj
 ub5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=3JJSHu9FsmPxAujVouhMDsGNkk6sBiZ/QmGwiiONFB4=;
 b=piB1BF2KZt7ltW0n65/SMj9VQmwq8XtRJDzp+Ok5gmnog8+Dk8DoGcb+jFfU8xoxjR
 q4zyIoms9zxyuFapXZdqrNIarkVtq+MPl6sBAxivDPWyR0L1h4GPpKiyGsRZwUl8YRhc
 BgwLQLDdZfNBBYd9McoPAA39rTPke4tVhNG3gd/IvFJqcaBsntx0JTQ5d+keibKph88R
 JWlTRKeg/LEWX+6Tts3nevDGMqjlUFuRfTTIHy1sezx+Iip+53e/r+ha7ICza58m7jGa
 x2uSRrOUjB6OOZvlQXa/HDqxB7H5jnASbXi1YeHJcm93jRKb7QgijPK0hvnoX3dGDV2K
 Zuag==
X-Gm-Message-State: APjAAAU1UmmCdxpp9DmxqzY3ZN5cKsKO1KQiad69B9bnCFEIPB1bRwpI
 o7/fwPrSnPP+h6yNK6N0H1gYmQ==
X-Google-Smtp-Source: APXvYqyvnmDGXV158zZXzurCCRh8+3D7IL8S9DfULYqcaPIxyxkKvDspSY364oomPYuJWS2qYqpqQA==
X-Received: by 2002:a37:bec1:: with SMTP id
 o184mr28322315qkf.479.1570534969079; 
 Tue, 08 Oct 2019 04:42:49 -0700 (PDT)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id g19sm11133394qtb.2.2019.10.08.04.42.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 04:42:48 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
Date: Tue, 8 Oct 2019 07:42:47 -0400
Message-Id: <D2B6D82F-AE5F-4A45-AC0C-BE5DA601FDC3@lca.pw>
References: <1570532528.4686.102.camel@mtksdccf07>
In-Reply-To: <1570532528.4686.102.camel@mtksdccf07>
To: Walter Wu <walter-zh.wu@mediatek.com>
X-Mailer: iPhone Mail (17A860)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_044250_416056_CDC86FF8 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Oct 8, 2019, at 7:02 AM, Walter Wu <walter-zh.wu@mediatek.com> wrote:
> 
> I don't know very well in UBSAN, but I try to build ubsan kernel and
> test a negative number in memset and kmalloc_memmove_invalid_size(), it
> look like no check.

It sounds like more important to figure out why the UBSAN is not working in this case rather than duplicating functionality elsewhere.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
