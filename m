Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A242E2CA9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 17:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/8VngZat7y7MWkbLYy3hUwHzRZ235Wv2pO10o0nx5I=; b=ocSK98lqrri7M4
	9tYf0J8D5seEjUsxfgt9MOme32TFG1fWXFeVkS+oFVDUR5/8bu3pNxMfMtgLFreHj4maJjs452Sux
	y93tuRb5lT67anTYHzzA1ybuCqLbEwtW7AnBE0NlbwSDmxAzhkAps59E3DcLrPQEhyWTJ+fwsTKsK
	AqHMt+C+xwzVgtJ8aQByLHXkTpa33/s3iYyU5JCYjjk0ClSXMl5Lqjrb2g0jNMqglWQpDM+lkUvcE
	kn8M2XtqjjvNQ39D6jqI4YkPoNzoZ11Y3yCpZ76jfVPAOV9fmzrY2pFIb1z9A6adeYPNhWdfAkeW7
	XDc7v4mwSf62agbF9TOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeLV-0006xN-PF; Tue, 28 May 2019 15:49:01 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeLN-0006wO-0Y
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 15:48:57 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so8510499plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 08:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:from:cc:to:user-agent:date;
 bh=2ksREyYQk7jUAmxjj6kKAaOfKzWITL2u9MpABedwwuE=;
 b=mMTWIHmtpHW/kCfVi7P/cdu0cX26em5nK45r/zhOOcmUvWoS6ny5gdVUjARVj1qqNK
 4+4OFcJ5R228v+wDVhBxn94cnE44EABCId0UFIwIP5SDEzNR6bv9isp3KRyTQTY/A2As
 GpyW8tWMC2sAGjRODK86Fqrn7XUvEVXYfts90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
 :user-agent:date;
 bh=2ksREyYQk7jUAmxjj6kKAaOfKzWITL2u9MpABedwwuE=;
 b=PqWkx/heILbBpkHuoI27nshlvngk1Za/WKnWNryRt0YcEXpEWOT+lPVRRz4NnO6y1g
 3F2D+4DdNyvR+NRBohXHSVEQl6kHE7Yhyr32qbSdUmZOcLfD7TdSoNwsViBrGEvzBTAj
 yN/NKjihdppKTrcvNhX0nZPe8UUlBLF+kSobF0sN5fyn+vPX367AYIFhDF433Q9EEL6k
 bfobE8gUSo3ifBUf/Qu7GdlfFx77OubtYvC+fzym0KNlJImCZ+n6bNYKpePyKa6LHTRs
 CRHV04T0z9zsEhXQh3QxyYoLCTr0xSoXho9QRrxZ49B3qTV27aPBxdAW0inRR+cUBH0v
 GNrg==
X-Gm-Message-State: APjAAAUqvrAHdjoxJPnVJTYveYd6JJK+RXOtX/JcLkQ06u2k3/xmlrWj
 srN6RLQ+DDdAUkN43lw8XemAyw==
X-Google-Smtp-Source: APXvYqw9Crknxqe7+aih5W//k5MSZWoQ/ebigbuqf3onineoNwCYYi5TbTQA2Zp87VlgT8TB+Rekmg==
X-Received: by 2002:a17:902:2aa6:: with SMTP id
 j35mr55060624plb.189.1559058530522; 
 Tue, 28 May 2019 08:48:50 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id 206sm14582069pfy.90.2019.05.28.08.48.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 08:48:49 -0700 (PDT)
Message-ID: <5ced5861.1c69fb81.956d8.5fb2@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190527043336.112854-1-hsinyi@chromium.org>
References: <20190527043336.112854-1-hsinyi@chromium.org>
Subject: Re: [PATCH v5 1/3] arm64: map FDT as RW for early_init_dt_scan()
From: Stephen Boyd <swboyd@chromium.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
User-Agent: alot/0.8.1
Date: Tue, 28 May 2019 08:48:48 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_084853_138429_1475BA1E 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Nicolas Boichat <drinkcat@chromium.org>, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Miles Chen <miles.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Hsin-Yi Wang (2019-05-26 21:33:34)
> Currently in arm64, FDT is mapped to RO before it's passed to
> early_init_dt_scan(). However, there might be some codes
> (eg. commit "fdt: add support for rng-seed") that need to modify FDT
> during init. Map FDT to RO after early fixups are done.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
