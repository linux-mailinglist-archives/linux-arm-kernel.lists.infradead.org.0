Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2690D398B6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6cBRtJbbdErOH2qte7rQCWParCOejUr6Fmuiu+wwA0=; b=sihA8Y5+ykOdyJ
	EhQx0yGuTSBv9ayJR7gtCCo2OlAOQqp6dT9A3h1Uz6yTUjVLRzit1cFOz+m4O0oKhj8YkoCBBAp/Q
	LDhiEwIw3bShVeDwaVyZGSaCEgpIM/ckQHVT5LksB6GFmTRlfXlR5RXRijBHTdxwS1sLtWsUY5o/C
	sweU04uiE9hbmIIMXzWgtrcRWcz8eHt+VfNoZsDLJeN3pzERZy4FvfMTw3iYTpPMB6q6mJBoeRBFk
	og28tyllVmiDzEFnOgLXODa0sZzMCV3EzaecNLjheMPuXW67thUruH4I8kieT/XVZmyf2/rFaTomL
	T3T4yY8t3+YELTao4wmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNOC-0002fm-PW; Fri, 07 Jun 2019 22:31:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNNz-0002cv-7i
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 22:31:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so1959556pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 15:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=T+gmMrSV8LpU7puTEZ6kwYpFcqjKjofHEmL9rgK1UKo=;
 b=SlklKlmBBiFdZPIfe8yLVR3wMr0yt2NHj6Y+rR/RuvE70WJgfk3E5VAJqvEkCAOazw
 N2IC6i/JCQIMB1aAqezYbAAFLQ0w7SXRwMwCf2qex94hkdMHZ8hFG5M6oWSeXvsUkSKE
 +7TNpDMtSrdMz1LIRl6h62d1jWPGFVYPirYiUWeJMpg43N8YN9gZuatmaFQbzNB+/R/A
 lhAtKDBRKeEjFhVAR6/JVH43HLndE96qB6NoL+EQX/N4FEYnHZ6IbGUuAOSt7yOopIJ6
 T+5+RY2/P9l5SxchgzjL6w2E4HP2tDeePcYLIcQqP3CPEhVdPZE3dC2xoOA67HLHlVon
 lb9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=T+gmMrSV8LpU7puTEZ6kwYpFcqjKjofHEmL9rgK1UKo=;
 b=p+OzHTA+CGBTpTUOm1KLZpYPIEyEa/cdQK8LrAKfYRdpMeegqf+GJSP0GBJTl1KQYU
 pf9a6D1X8CGnGH9IFefgSZl7tlems4Djslct6X69FkLG/oblmOBGsq3g4oyC1NfQJiOv
 Kw+cD7Wm9iDjUfD5Y2wYnrWBMf1hR/F/r1BwOCgeGYswKA5OG3iEuH3SXdbRTdBAv0bX
 6vJx27Wv+9YvD3MDJlVGZ97Q6iWmm/T0TN2fVRX5a+UXp1MEtDfkVwJCl8rouzTe20OB
 UvbdOVol14G6UyXw5QfdnxBl9st4XgdDzdlz0I3tVcbQo7E9l8Py62QAW4DIIF4BJUVp
 dh+w==
X-Gm-Message-State: APjAAAV7y2ykkQ7GPN9W+qdpH95I+VejdYoaPj1vYH51sSYqKgyKHqNA
 8oAlh9+RL74CimsKwyIadXq4xYYgpTs=
X-Google-Smtp-Source: APXvYqygPMKbPrpvJslf3FYcxdtb3QVEH3xirov9jP5r9Se5JGvQK+yhNT57w9YN+pdO+FqSHHNraA==
X-Received: by 2002:a62:764d:: with SMTP id r74mr38588693pfc.110.1559946658401; 
 Fri, 07 Jun 2019 15:30:58 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id r64sm3822829pfr.58.2019.06.07.15.30.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 15:30:56 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 0/4] arm64: dts: meson-g12a: bluetooth fixups
In-Reply-To: <20190607143618.32213-1-narmstrong@baylibre.com>
References: <20190607143618.32213-1-narmstrong@baylibre.com>
Date: Fri, 07 Jun 2019 15:30:56 -0700
Message-ID: <7hr285auzj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_153059_301426_51A3F0AA 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> These patches :
> - adds the 32khz low power clock to the bluetooth node, since this
>   clock is needed for the bluetooth part of the module to initialize
> - bumps the bus speed to 2Mbaud/s

Queued for v5.3,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
