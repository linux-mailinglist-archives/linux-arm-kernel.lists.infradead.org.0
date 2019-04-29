Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5EEDDBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 10:28:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jp02de+XsPRJLiQxnMvgV0dHuFu9TohY+g5lsfL+lPM=; b=Q7VfUjLYN+p2my
	IXbcI5VrQY4EJPVyC+igXtbGGUt55APmlIVvRwAJ45RXwSH5x2O5aKCkEuivZF2P1cgzmK+uOZDfa
	jpjvM/+TtMGqF+PXM08cBPVN5sWfCwKRbVOe3B0AI2PQMW03/fuajN4z/oWbSsxJuSBTlagXsc5Aj
	pWM2IZjR3718hS0w1uCNEJFEY+Jz9NmKjCBbNj0rb/SHS9rUm5YK9DMtYe1UDro5Uzum2vyIEVsoc
	P6N/wXZv6Z1tDyvx2q9n5qNx/f6jZfRZOloenWpszJHVM8Py3cTMdjXU4crlfnQkTRYbLCtRAh2aR
	Iy5TM1C15k5W2D75B9uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1eE-0005nn-Py; Mon, 29 Apr 2019 08:28:26 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1dq-0005XB-6e
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 08:28:05 +0000
Received: by mail-qt1-x844.google.com with SMTP id i31so2205818qti.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 01:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pIjwi9Pdwq2tpQOmRVLR8AJ+RfItycNgwKBPS/FfFwQ=;
 b=KCepw7VGzHhTmEryB3hPHprLKpgV2QymJ2RW0SjTSFDdpK0ktwAMBDSJ1ITy+XDh60
 DoPTY09BntxLpOu+kCo5BVMGZNy/qjM3Zj6aUXL1PUv1mNwY/Viwx9hmyBnY3bpuaeNI
 XKNVhhBOR2MP/AIpyjpQxeKiRYyJ8JIVSDDJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pIjwi9Pdwq2tpQOmRVLR8AJ+RfItycNgwKBPS/FfFwQ=;
 b=s4ON7zerqyDWHcgLM2k3XU8GtSgtNXpW9d4n+BtY5zYe+qFnvgp77mFNx2QL/76v92
 V8U53hRB7OYWIma5nCYdsBlDmtKAGSXiymM5RLVUcwE104SYU7ZIbbvzcknx5gcxEFW1
 UX3eVf9t/Z4uFpAW91T4nnDkNECr3NaJCqTGMsbQ3b9gx+3pmGYvUIz3thyNFMRVJFZ6
 CY9/g38rjpsGX1bV4vbnilbLwfnMWxgqMfm7KrVS8ul4MsEchGmwBHutHD/FgtGedawL
 8l5cqBwsJ4XfE568Jti1gzusTFjCgpEqacnLehnI/v11zz49qVNbhG5mhhqZ4+CCb2/v
 bkew==
X-Gm-Message-State: APjAAAWKxdtDHo6edYHxTdN27yIb4zrspmsmYEy0G6vuRkVuzDX5RQoV
 tPyfW5jpMIcV3vdeaiip40ECH6f/ydqlQZN8esY=
X-Google-Smtp-Source: APXvYqyIzM18/pZaeSSVKfrsxmgXogVAee5aa7XHdKeT4Kr5aRXtgQ89YiVr3LiG7FMcDqt23jMOQnz29AtcwPe8azo=
X-Received: by 2002:a0c:ac83:: with SMTP id m3mr47431723qvc.85.1556526481157; 
 Mon, 29 Apr 2019 01:28:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190416162150.150154-1-venture@google.com>
In-Reply-To: <20190416162150.150154-1-venture@google.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 29 Apr 2019 08:27:49 +0000
Message-ID: <CACPK8XeTOhcdKPsKgsBJXAYeMDeHRLOSLRF5XO0oT-5XUhghMQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] update aspeed-bmc-opp-zaius device-tree
To: Patrick Venture <venture@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_012802_502029_888556BA 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Apr 2019 at 16:22, Patrick Venture <venture@google.com> wrote:
>
> Hi,
>
> This series contains three updates to the Zaius ASPEED device-tree to
> add voltrage regulators, and update addresses and aliases.  The Infineon
> and Intersil drivers are staged on hwmon-next, and the trivial device
> dt-bindings changed are up for review.

Applied to the aspeed SoC tree, thanks Patrick.

Cheers,

Joel

>
> Maxim Sloyko (1):
>   ARM: dts: aspeed: zaius: add Infineon and Intersil regulators
>
> Robert Lippert (2):
>   ARM: dts: aspeed: zaius: update 12V brick I2C address
>   ARM: dts: aspeed: zaius: fixed I2C bus numbers for pcie slots
>
>  arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts | 121 +++++++++++++++++++--
>  1 file changed, 113 insertions(+), 8 deletions(-)
>
> --
> 2.21.0.392.gf8f6787159e-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
