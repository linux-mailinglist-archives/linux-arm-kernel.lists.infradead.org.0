Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A6682726
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 23:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAnV63kVhCm1jx+2DtZrmFCmfDDyCOaqXNLXD2vI7+I=; b=qnSnXbnINnwq3T
	EwEPtVzTP3qU3z5cl40lvhc2HSD/3M1vAh4srtUZ3ND80+dUjjZuoWr645MiefGe+ob6I5DWCQlme
	4gUIXvQlIhajmimQczXI6d532AW2QlizdUBbttbKnSiVE9d/qc/0YiJDtuXlEmEebuslPegmQUL3s
	y9YEvW6PU53iiCcNjdOnLlOWTLUjO+t5+yPdgIlYcEUrigOkPDyo4vFUlyqyWLik2exrxGqnucKqY
	d093NpooirEU+JB99gnXasL1SSpX0nHAGDDhl2mZoFjNmmySmkLavmpyGqgzFpbpUr6w0wh3hm+Nm
	VqTls5/JeTs+s1KI/oXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukpn-0005hL-Rm; Mon, 05 Aug 2019 21:48:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukpf-0005gc-2A
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 21:47:56 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so40311462pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 14:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=uen0o9EWyihb8JD0XCmurleyeEO9Sh3FbyjhtFa72iY=;
 b=krxrwuHaZL0UwGH57VzlvsLeIWI4NxpK879CAPB8bDxdJeAiCJREZe35FPhKcnnY0F
 yItpJQZX46W3iya4Z6PynxD4Zh5lFy2TIBu6do042B1SkiTg0003a5rZ3Zz4jcQXd54w
 v+ErJdagrw7AlS5jtNfG9Eq1IcGPWFb7eCGoAINMMwmYGSpBdhJCat/bEoFP699Kc7CH
 T1MFDOcyK5skmoh+dO++iJZA7DMeXjpEG1UgZtgnOz9CfoAhOofLHnGu4ioaVOCQhCzj
 ylf94EVNpcY6AlbeWE860lBQIU5acTWxK4EmtHyPgyIizfql59+hrPy7aQ3fcnzt1x+U
 8GQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=uen0o9EWyihb8JD0XCmurleyeEO9Sh3FbyjhtFa72iY=;
 b=lKH/wQISDPElw8xf1KOb4misEQ9AuCNeT3xrM+V5TuZnydRmuixNGt98v41faJbWNq
 wV6lLM4l4Nq9vB9+KRV0Pl1pW1t0bcTODLOfLpU9HNxbwsO4Ws9j5d0htklOQReWOagz
 fCh/GwIALuJGzVSo00XMD3/YUv0OvyCnDbLWIjjhYQLn8g3DFboxG+q7dlvdWm+0kiXG
 Bhssyemlvmjj6R0A9d3iUxhm3NJwT6XKVXLTC4GbxDS7PqYF36gGAaaYma1Lq7YJ5ULN
 ADv0rC2JahIb7herT3s9yVfPKYxlL5m+Y1CiREpHdW2wILjPXuJAAE3pn3qXe0AROBXt
 rG7Q==
X-Gm-Message-State: APjAAAWf1mwTQlsa3wSnKJDBxy0e979X9mx56gEbxLRB5bA+I7n1wrbx
 OumCMlKppnj11/Xsj4t3JD1HPA==
X-Google-Smtp-Source: APXvYqyExudIPbUknudufG2uNBdAsRYtIyN2g30//+P4aZV+iM7poBR/0RQ/P2wvpcDI1qT0p3acew==
X-Received: by 2002:a63:c64b:: with SMTP id x11mr23952115pgg.319.1565041674478; 
 Mon, 05 Aug 2019 14:47:54 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7483:80d6:7f67:2672])
 by smtp.googlemail.com with ESMTPSA id
 w18sm109529632pfj.37.2019.08.05.14.47.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 14:47:53 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/6] soc: amlogic: meson-gx-socinfo: add A311D id
In-Reply-To: <20190731124000.22072-2-narmstrong@baylibre.com>
References: <20190731124000.22072-1-narmstrong@baylibre.com>
 <20190731124000.22072-2-narmstrong@baylibre.com>
Date: Mon, 05 Aug 2019 14:47:53 -0700
Message-ID: <7h36ifgu7q.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_144755_108412_637AE344 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> From: Christian Hewitt <christianshewitt@gmail.com>
>
> Add the SoC ID for the A311D Amlogic SoC.
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Queued for v5.4,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
