Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CF51AE6C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 22:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhZfgkCJaGCX5+kl5kHd04oNnCfsGgY6RskP+ghnDWE=; b=TLo3M2h7ixh/3q
	G8UvVvZQWigMRQjEe7ZZUSKLWg/0xtut5huavV8zuj/CI5IPSiMBaCBFr51fwDXBI7Diz6DekUlf5
	FtAnbh9LdQUD+2Ww02X5uLSJcweDf+5BTDqSE+yb2ZymnEBDNaiDY/YIUQln1x9DoIHzTPjMEDnh7
	AFjNvivywPpx5RLWyq6kVcHJ0XXuWS5yKAYqxxv2aHT9toCun7lH+fg9KM50MOhgjXQU/4FH47CCk
	7sFqHeqleRGXwkRprhIh6qoweRKBQBUTCCGT4ShePgYRedAm083Gh50lUjpAuKiUDa5+AQki6b8o4
	QMbQApmcznsNpvWD8C1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPXbO-0003o6-Cw; Fri, 17 Apr 2020 20:28:42 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPXbG-0003nU-QC
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 20:28:36 +0000
Received: by mail-lj1-x244.google.com with SMTP id n6so14714ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 13:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h14ZAlcxEOJ9z/Hv31sr/1ltI3mUlLHy/+gjpueL7+c=;
 b=frKbH3JBt4zlJuNfT90DhJYy+4RsT14AhUbHUcDsmulBhWMgJ+Gd3LIzQWyA+itDvx
 YCpAu2qKTTqcQ9Es6uCn+rKGAt3/sk/yqe6gFbuOT8C66H60DaK/YE7mIAWjfLeQLLF9
 8D9/ebDbmfBcoRPOfi7xObAI/yom5OCS7gek4ZyyaEkd4l7SC1zOMA1TFB7dwiLywFWn
 ZKTCgnNQryGeF9zm9iACZEqD1yLII4nYk9+/vCf5eFChRzOtRqvAJe2xHY20KUFx62n8
 oMyfJfW+r/Cfyg+ECmInSc5JyJ7joYqVPdGqPWlT4gfOyg983XqYRZh8cb9ngrkM2a9p
 E4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h14ZAlcxEOJ9z/Hv31sr/1ltI3mUlLHy/+gjpueL7+c=;
 b=jKAHXP0kvvf7cTF0j9+WWFZRw7saO6TQebKobAbb9LDsNM7yuJM4mrqxtRFijXFizM
 7DanvZozz0cgTgEhYhdGd7Hq8nmra5kItes1NNW5ntmX8efe9rAFV+YaDtYqaDInKn7q
 mbfWE7tVlEOYP/jM9L0vn0YGsYZYFphA2+StZtWV0fB5itYFfz/UW/SgsrsWKMP1yBjN
 wsiKImau8NmPve7y4Rcf8h1eDowUN966IyFXlyzRcWpuhV7BDDN3OEBDgkSYvGSPNXiW
 bEibBXYRm4iMs0T/FAfG2UCd16RDxDWJroMEwE5zssJQB+cFgN5qoo5vRrM0KtPd7wKf
 k1lw==
X-Gm-Message-State: AGi0PubfRLRTb8bWBxX+22dAlii5kGke3EhgGn1cTJIsoA96ndyF0ZN/
 WBgyZd868zOgnGoABZDWVlBs4SFQUgIlp+X9rB2vFLws
X-Google-Smtp-Source: APiQypLveNNENuIVmHXeDtUxxke/TWjjs6X1LWw/+4Pex22qmDuo3qKWe0u4QGV2aofRHpzrePvUmK7ULd2xfnoZQFM=
X-Received: by 2002:a2e:b6cf:: with SMTP id m15mr3114603ljo.168.1587155312663; 
 Fri, 17 Apr 2020 13:28:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200409013947.12667-1-robh@kernel.org>
In-Reply-To: <20200409013947.12667-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Apr 2020 22:28:21 +0200
Message-ID: <CACRpkdZsGtQXn+YM1Tejkn9+ke8GP0qBj9Ndb3N9noGd14Lrvw@mail.gmail.com>
Subject: Re: [PATCH 0/3] drm: pl111: Fix module loading issues
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_132834_861281_3BA3082F 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Eric Anholt <eric@anholt.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 3:39 AM Rob Herring <robh@kernel.org> wrote:

> This is part of a wider effort to fully modularize ARCH_VEXPRESS. The
> pl111 driver has a few issues with module loading and unloading. The
> setup for VExpress is more complicated than it needs to be, so let's
> simplify it.

Just go ahead and push these to the DRM tree when you feel
confident, have you tested it on real hardware BTW?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
