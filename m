Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069202CABB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 17:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFTFu/fIhKw5ZnzxEOgdoVg5ePZfupNf7ovZTh9Wd4Y=; b=RyXVu+oBlAVkfO
	2VLL7YXs2V3BlRTglDzjiMZruNlMY2hi5u2kIY+7+6HMnBF+g+Hp5otlaqU51ckL39RtZ27bfbb7D
	HBcHbfq8mikSVGJOltsSO5/UhSzV87AU00RmsBOEUa8E2E32SsltUABlQAS0c7vm4IpH6cvgNNNFe
	oL3xAc4OzT/pDctZzXvfu+Qa/E/R3oWG8MEw0D0rmD83rYW3hrOBXR+A2XPUFxuV+8ZYTKX2WMhjZ
	Fk5uMkuUP0016tyZTH3MM+myo0l6PSygKW3S7mQ2SDhaepGqL0JHQrpQ8/zC15x5gj5imZ0k3qIKI
	xuSjLGZ1tkMRoH4RduZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeQI-0001IM-J6; Tue, 28 May 2019 15:53:58 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeQB-0001Hq-SE
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 15:53:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id w34so6569457pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 08:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:from:cc:to:user-agent:date;
 bh=gZdVe4KYsQOsjAdrlH5pjQLw2I8u7ZqIj2eBsmzs94M=;
 b=H/tDQsto+r3bnOsQ2Dr3G9DPtN6VFJ21sEuBJ25/pR8vNxEeLnmJnk/0c9YuW8bkDe
 b5W3NUIWMGHJCKZiVPs+K+9bO3xF+nnc6gxysYXLoxJtPhNQwYf8eD8U9JBxqFz0r8pv
 GDmox1lVt5VuEkJhsEpbB7no06+vFaqML/62g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
 :user-agent:date;
 bh=gZdVe4KYsQOsjAdrlH5pjQLw2I8u7ZqIj2eBsmzs94M=;
 b=LsAkdsewr5YVKzkBOsCPt/q/3uy2GUeL6FK6d4L27/LvkXT0kqsBnt/u+mxE9AtMFG
 tf4hQn7L9ap4kiJQGKBaS4a+aDITqXEn6jd4lPKjnMun3bfUDMxcxY77ItcRXHCrjJAo
 prYLtWzBlGtKEID8EZ//BG+LAMEantGgMFaahaAnuZQ5jWD2p5YW0YlDP6WeotRieQAl
 P9YZkQU4mtmJXLO5PdHsf0xrNowv56osbsZONfk7qYRIOAad9/XaCcmVKdEtj8diM1tm
 FJTwwJqYM0iBsn6rxL68QES8O6+ZlXmgNOZ+MdfkU81BSfIckJX0E/9u75qbTvWSZTD8
 mQUA==
X-Gm-Message-State: APjAAAUK+EbYItDk7VvMsFp9rXT0vtqnkLGE1gMuBqcClFzaZe7Qz1+n
 uDRIN7wzOeHIznZSnn6QJScRbg==
X-Google-Smtp-Source: APXvYqw6/Wgo8S4X+4IdRoxCALLE8MCP8dhzdasnJiMxFjFHV3zRdny03KvOcEq5wVUfOwMG+APqMw==
X-Received: by 2002:a17:90a:17ca:: with SMTP id
 q68mr6883350pja.104.1559058830791; 
 Tue, 28 May 2019 08:53:50 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id f17sm13153090pgv.16.2019.05.28.08.53.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 08:53:49 -0700 (PDT)
Message-ID: <5ced598d.1c69fb81.dabd8.339d@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190527043336.112854-2-hsinyi@chromium.org>
References: <20190527043336.112854-1-hsinyi@chromium.org>
 <20190527043336.112854-2-hsinyi@chromium.org>
Subject: Re: [PATCH v5 2/3] fdt: add support for rng-seed
From: Stephen Boyd <swboyd@chromium.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
User-Agent: alot/0.8.1
Date: Tue, 28 May 2019 08:53:48 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_085351_915914_9D7486AA 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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

Quoting Hsin-Yi Wang (2019-05-26 21:33:35)
> Introducing a chosen node, rng-seed, which is an entropy that can be
> passed to kernel called very early to increase initial device
> randomness. Bootloader should provide this entropy and the value is
> read from /chosen/rng-seed in DT.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
