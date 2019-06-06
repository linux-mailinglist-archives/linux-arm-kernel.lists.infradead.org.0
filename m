Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB56237D93
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 21:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0FrCCy5l9CI3m7YKdJjloDFrCnVOXsYFcsmSAM9SmI=; b=Lf4sniKdH1450c
	WxVIi/C7WH5NVfQPjS7SvgP6i5uKVCTDVk2oLkZc/UDCWY/UYssSgWI03QGrl8SmMEaiTS0VnbP0p
	CBI2DAbPJjRk7A9rGZP2hlVYJtSqTDg1LC5CK13jxUPxuLqKJhWzz4VrlqRLJCLI9YMpj7M9iVtAz
	vUMJvRQCbsDNMDpQNld6fvaxHhDgpclHdR84myhKGSCt7RHCtUrb6EBXjBxUtezLPt8Bk+aqnxquC
	BMLv0MI47KbmmAh07SwB2L2+fjT/OqRcF3g9Mj1ezsxhweev3sDmPO/MCbHHunXO/AKlw7Sr5DmwS
	XHhtYZIdE2WnxC5zoTPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyMB-0004lJ-Tm; Thu, 06 Jun 2019 19:47:27 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyLq-0004To-RH; Thu, 06 Jun 2019 19:47:11 +0000
Received: by mail-ot1-x344.google.com with SMTP id z23so3088458ote.13;
 Thu, 06 Jun 2019 12:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UcIBWNKq7rsOKiEN1ZaEM6TKSTC1rUDAvceROHJkKnU=;
 b=M425AF5Q27k8jkeaKLy3GpcG3/THjW3EKKvWd5BFOXOfwvojEUqtEhRXM41XGdkHMb
 h8LU8MGpp5JRP5f/g32xGqlzlKxtbJ1u9xwjgu4Nto8zWLvviGXaKB00286n9L/T4Kox
 EiouMsmFQFmfoT7f64GMWqXE03Ohqvy/QfKEic7ODdh1rUmOXcoGOopizF9CwVrvNn0c
 0z8zEtBu4+9BjYPIlxOhnc63GmhLiXaMMGfu+gGPXSnf9R3XUBVQggmIhg0atpJM6WBB
 /R8fvLI5n11mZVCwWrM53Urn6/S8fYaWeKPZj+Vw4WQklRnIhDwsLMdo+hY6Ym/lt8HY
 LkEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UcIBWNKq7rsOKiEN1ZaEM6TKSTC1rUDAvceROHJkKnU=;
 b=mvXH2J/NU9i1MNLPUTKAOwa7veOvoi34kZZAZbXdm1vevFX4/jI42mtD6itsOQpeCW
 bRc3szF1Tk8QbnAX+zl3rI0BEz4sBcfRtqmHuz/g2SsGGgarZkH7wpQJvGvwmVaMGOQL
 GaBntK9ZCVyKTALKFmmkS1VmZwls4qWnK/6fbkZSQH8nrPlwhuFhdhDLnkLL/5qug2zy
 dmZjK0MzpH0w3F93tzFXQvExy09pZwluZT1sXLtcB/EztEEyq3Ex/7/wXIHa5e+b0UId
 8T4Q+tmY4ZAIv4ELO/CyEcq8Zd65kq+qtarpKBAJ3MmeS4wmY93FksFtv9cZDm3zWKDi
 /h0Q==
X-Gm-Message-State: APjAAAXlVlDgqZIfLVmfxfX0dYcWakmQUaiT1Dn8h1MqbLCf6YZglzzP
 OnjNovISFtXkJbOhHVmvpGuZGLYWaD9s6hz/cGk=
X-Google-Smtp-Source: APXvYqzFpAzVe5kdyBif3vrS3V+GMrD8alJ36+ksEaUmNq0YqsSf3K6qGWZQCFu9O/Xa8RCVUUMMwVMVwimx9IQZ9h4=
X-Received: by 2002:a9d:32a6:: with SMTP id u35mr16549424otb.81.1559850425739; 
 Thu, 06 Jun 2019 12:47:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190603094740.12255-1-narmstrong@baylibre.com>
 <20190603094740.12255-2-narmstrong@baylibre.com>
In-Reply-To: <20190603094740.12255-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 6 Jun 2019 21:46:54 +0200
Message-ID: <CAFBinCDS6wovEfU+z3bxYq6Kyw-Br+EuBGTdG6sNx4oBW=NBzA@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: meson-g12a-sei510: add 32k clock to
 bluetooth node
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_124707_518342_5845338D 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 11:48 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The 32k low power clock is necessary for the bluetooth part of the
> combo module to initialize correctly, simply add the same clock we
> use for the sdio pwrseq.
>
> Fixes: d1c023af1988 ("arm64: dts: meson-g12a-sei510: Add ADC Key and BT support")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
with the correct fixes tag:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
