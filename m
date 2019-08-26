Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11609D604
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKMS73hwx3393BgFJ36bOhWFg0lsL0fPeokVRzQQHhg=; b=CCq2oQSXYphCO0
	7hofj2V73hGzaVlXJTIAQ+H3hqT5sK0vaxEs2UCEiHnvuA8TesvsWqHU1MCkEyy6svivtA0G/t7O2
	NuP8uOQ70DnW5TO4N/Rb3IU44fnW7jHjS1gb/28cR/zM81ksWKgRBl14HQM0cBm2mDpTC9A9qDO4H
	5HXuarMUk3HKS0JuysEyF5na+jyZrIITEhujk1+isX+B8Z3UzFe8YdVhKbpQQ8YvAwOdj6GMZ6d97
	3dcYJpnADZGiaG9ZrxhkWAUHr+GvXH1NNuGJaYjmaPkjxIinuhaXxmXtzkWJnZkwORVy5r+MTAbkW
	2VjqThpaKtxAiNVqdSPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2K6I-0003Xx-TC; Mon, 26 Aug 2019 18:52:22 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2K67-0003Xf-Hi
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:52:12 +0000
Received: by mail-pg1-x549.google.com with SMTP id q9so10227102pgv.17
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=f13wn2v3HTWLW79B2qFqNfxBA9vXXjNlnyblgswdq/E=;
 b=bfmZE7Uf1xNK78UufCnnG87LZS9m7cHd1LRQUTgSX4t1YttJJSQNzi3p93vCxe06t6
 l00juMEHKARjQyGo2vyvuxvJHkds8eC5FP5YGXqW+64X4/T/kfzRqfH+u77bxE0WVg0Y
 MozDokfGxp/B7yoUO6goIxvixoWQYk6g/nYYbuEeu82L+uJnPGRT+0i28/YCQAQyXuzW
 CNSZMPeDkigzmEfwJfNqaMAbCATcFEDvzQnonAmyAstW1Jo09TS7feX8QuZ0rwtPxAWz
 Ex6y5/XLNKFp2sCQWqiT0Ain+OGSZccgXThs0vaj7qMLKj0vN9EU+Ij2d5H7GLbHGPT3
 sHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=f13wn2v3HTWLW79B2qFqNfxBA9vXXjNlnyblgswdq/E=;
 b=tnAY2iJMFxdCgaxdIAG+ZC4GwNVdWLqv4H6fCUVqG9AgjJTPmbD35EnDD530AkNWmN
 885EVAkOgNxP4CBjiLiCiGc93GIcwj5f7AP9Mk2bqJKrBRefev3rIVOo6Cw2x02SHTSr
 V0waFVFjsWgc7MA52fVsheGmAGh3sGGpPTLNeKK6eSSRDuc8x+z0xovRkIeaqnwWj/Rc
 NGRlgUnSdMou9MiCKwsR2/mZ45UE2pCrvZ8Q6IqYyctNHlMtEr0xvMUQ5pz5wPflyiV9
 h9cM2gK2kvpzAduoOw7qQzRTuc8Sku1NnNNNu+tKp+RPWzd9hHlbTY9qPzIf7UC7U/4X
 orvA==
X-Gm-Message-State: APjAAAWBFntiPr12yYASLYXi5jvwUK0oiuBdSw/FTHlIaGWT8oukedx/
 EoheuEFq4vH3syKRGs6Nz1VRFzoyMA==
X-Google-Smtp-Source: APXvYqxofBxaAILlefFytt3O0sJSZvx4y5z2QEpvVJn6P3QTOD4bxfISMK9z35l56sFzEoUKmV+9pyuRX0U=
X-Received: by 2002:a63:e213:: with SMTP id q19mr17542135pgh.180.1566845529981; 
 Mon, 26 Aug 2019 11:52:09 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:52:06 -0700
In-Reply-To: <CANLsYkxC-4UZcVKoTQiJ2PsDxwuriFoAwqdbM39EC1G3nwwAHg@mail.gmail.com>
Message-Id: <20190826185206.105863-1-yabinc@google.com>
Mime-Version: 1.0
References: <CANLsYkxC-4UZcVKoTQiJ2PsDxwuriFoAwqdbM39EC1G3nwwAHg@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: Re: [PATCH 0/2] coresight: Add barrier packet when moving offset
 forward
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, leo.yan@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_115211_614870_0B12BF16 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alexander.shishkin@linux.intel.com, Yabin Cui <yabinc@google.com>,
 linux-arm-kernel@lists.infradead.org, mike.leach@arm.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Can I add your Tested-by ?

Yes. I just sent a tested-by reply, but not sure if it works. I am not very familar
with linux kernel review system.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
