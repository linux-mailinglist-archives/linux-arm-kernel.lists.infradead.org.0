Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E001F2BA18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmyJDOz9XbnhUp/g5QG/5gFMGap/c72FsotCYQmAM/0=; b=vEEgxyft0edzpu
	hov7zl0CKXaRu9Gfe8AdaNHnZeJH2oNXTaTBpQHlrRjBWMuSgUqzess254dL2AcTJylnfV7dFpQ4b
	acuDyFunmjWINwSJst7BcmwO2ffZkxaE8HfLxP80vTn329gJH4Nc5Vf59cNf3vnRjwuy4ODCE13Ie
	897F18zA9tFArWMp9vPU1VcZkT/YfTVH3rdpy3kKmROOXDbBmH8brjQJd7F/WPBlcKWnRIp2ACuVs
	Dbz+ubLZug0rWmYb6HqwoekhPxCvu2ZmXPV89nBG8WVRsNdrcxfalnznMHkPq9rTzHlcTnkTWxTd0
	45mNVlkmijmjNiQhMhaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKK5-0007DV-TT; Mon, 27 May 2019 18:26:13 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKJw-0007CG-Ac; Mon, 27 May 2019 18:26:05 +0000
Received: by mail-ot1-x342.google.com with SMTP id r10so15545534otd.4;
 Mon, 27 May 2019 11:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kEK8YEn82uZl3KtekPFpQObwQps/VzOazNNdEv6HIBA=;
 b=QDIRZ07yzcoElXx1D5ucFSGI3eU44JhkikzDlIE9bnlzRVnEM9LhsO50yqcl21AGha
 9kmUcGS0oL53IGMo08aR3nyTp5v7yS48O08Am9Q6zNRoxi2hdAfm9MpMHGed/eSNMhpa
 iLBCl+FLUYgSCC7gmBAQ7YDoxHRmex1pFUbX06J24JSTjn6yaNFjEmknNVP7k4luXkV6
 6aI1+2hG4rnvkESpzhGGrJNWbUU6hhvQyecWN39Sl/nT1deo9xjaXOiN33n9HhZXl4Og
 alAzIqNGSjcsErpW038oaoWDU2T/uGXpyh0NYmggXAAGNHqpvEuNXhuOiHbY/Sp6MAfM
 mFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kEK8YEn82uZl3KtekPFpQObwQps/VzOazNNdEv6HIBA=;
 b=Vsj6Pj7Ec5jbiwzDEr87aLZl58pP6jG6cPN0wJ81+tzXdysu3BDaFJ5SMjiKY0UTpr
 oi2/HSI18C6c2WpirX5s7anvl3pytYT7wLC3QLLZwKUqtLUMFT/+ZePgFU9jna714C0p
 aZcPvJgMSXaG3PHtLFy3zcxU4DRyTZnjy9+/mKnw4NFMLRqQvMmR16ZZpG5AYLI3vpoh
 iZvRtP0I5UsZnhh6IQFGBCKQ07L+Gn58HwueedYZr11AbGYYaQrZ0rDiLWk82et+JJwl
 2Gm0CK8I+AZJMxQe0+Mnk2xpHhXTdeTcgToMccgVPSqGoTX0YWWbjwtk1CXwECmQa0eo
 K5zw==
X-Gm-Message-State: APjAAAULINUTciN1aNq63C7vPTrbimuJRP7Myte+B/VKWM1XgRidwgpQ
 KUK5xXHjAmxhn6piq0A056dIuLk3uNSr8sdz7H8=
X-Google-Smtp-Source: APXvYqxO8mD3SqAenWNr+oA/vGJ22mekTdcIzROJVXOaweez4x2pUntpBksdEFug2PfumowB8H85gwXbyoy3O0xWdDE=
X-Received: by 2002:a9d:69c8:: with SMTP id v8mr18611131oto.6.1558981563581;
 Mon, 27 May 2019 11:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-11-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-11-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:25:52 +0200
Message-ID: <CAFBinCDDGPqnFQjtJx8Ny7nuoKScq4qYwkNhznU+3TMMDOFWfw@mail.gmail.com>
Subject: Re: [PATCH 10/10] arm64: dts: meson-gxbb-vega-s95: add ethernet PHY
 interrupt
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_112604_369558_CFB68D92 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:24 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the external ethernet PHY interrupt on the Vega S95 board.
>
> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
I don't have this board (anymore, mine died) nor the schematics but it
matches other GXBB boards and looks correct so:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
