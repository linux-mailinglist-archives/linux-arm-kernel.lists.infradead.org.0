Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848C08E60F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8GksivbNoSbqIXK3xMp+1oxWcFYfZrQZOC7QKYvVBs=; b=XIi8SxELFmrOIl
	MaN/ed+IDmyiNMrkF3Cid1Z5NldNsxMDzlpgfc60QiRRJ/D54X1IQOo9vFXqzdryzITRk6lvVGi7I
	dZT5BalfJRGeutkE8HjmKqizr4TZDYHhmeN5yzOXgRL5gCpi3+V0iNV1a9aZAAG5625bbGXkm7xCI
	IMGRMHALdMli5wlZ0ICCG48yoo8RYGlqySHDjd0TUqo26quQYyFGqPHeBl1hB5q0cXe6ttTpSeqtL
	+uyuHOk12L6SJ3Ur+j8AkNysUdcStJyBFfcWhD6VXeJdgtF23luzWD+fSmuRXzlMq7q2IZa4/3r8J
	qsclfTHivPTvrvMnBMHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyAxQ-0001Hi-Kv; Thu, 15 Aug 2019 08:18:04 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyAxE-0001HM-8W
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:17:53 +0000
Received: by mail-lf1-x143.google.com with SMTP id x3so1121591lfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hw7jSAIgwN+rABLfqVTMGBvkTFu0H8DfDB1Vzehui0E=;
 b=R/3iJHmXmu4t2d6jYnZwXJFu7xRlQdiL0AFbNMTP+brJ+S84E6ruCuGVEBHQti/gRa
 38IeRutQH5E/LECRnqD33FqoSANwovOb/qZv0fv+uD6lZPVvKAIJnzwnLhqnbWNalp04
 +b0bDrWP8WZJ3EuCIB2Oz/uoLFeRv+Ib/cLyqBIbO9EJiksmb7SWopg3EKVlK+X4FVYr
 V/Y4E3ctoixt9AZibQ30MYyLa1t8aSkQ+pJ9Gg69+XCyeccigxKZ8/JNYwY3HhgxcJHz
 ZMkoV9yd2MoGlIfF+OX7OcmShgcxNw2DqDwRPCskd1Mxe7jWF/6AKEJbgip4dylfABTj
 QngA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hw7jSAIgwN+rABLfqVTMGBvkTFu0H8DfDB1Vzehui0E=;
 b=B1A2B06bDz6z3k3GXxa5Ml0QuoIKct+RywgjcntQtICydE+IXsInHcYeK1mzydoFl+
 78TIlNQzp3EMkgJKTh/bLwvLaYdxuWsuZ+sPZbSgXiBtyc1ubqwDRlMUvyYqQwMyXKos
 j5SKiapb+W7srkKJ9D1+k/zkZk+xVQ+1I6XD1wlE7hFpe/RgsWVH6aIC5r2oI8V1v9pT
 NfGTq0ndOTKBOZW6+e1Fb77S76YMv/cZevsilszTxbK/F9Vdw7UHZ5hZd3pT2uYxV/Tj
 5LqA9WAGCxbsj+4xknDCBj5AdLidv3iNxzvmgpaXLIO2Dqqxvc0XCXV7fOvo7YPRHZlZ
 +yWw==
X-Gm-Message-State: APjAAAVFXCipVVut6wCbY/ZwBChiPy/xyPcZ4b0nP2nqutXyQyiB7pNG
 uX2Po38n3D3/7SsMhuV/CWQPMjYfpjJtPYnsYydvcw==
X-Google-Smtp-Source: APXvYqxPxwQsBMfk/OX+yJdpAw36qGQSyoTJ+sTX7VpaAD6F51EWmcwNavIJr21um/O+pXUWt7FUxh9EGojVVK0Hj5o=
X-Received: by 2002:a19:ed11:: with SMTP id y17mr1749758lfy.141.1565857070180; 
 Thu, 15 Aug 2019 01:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-2-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-2-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:17:38 +0200
Message-ID: <CACRpkdZxSPutW1QNkYQ-T8cVFQDbVBcVyQM00g_8_i8WiFEMDQ@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: drm/bridge: analogix-anx78xx: add new
 variants
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_011752_310262_2720A547 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Andy Gross <agross@kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Clark <robdclark@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, MSM <linux-arm-msm@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 freedreno <freedreno@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:

> Add support for the analogix,anx7808, analogix,anx7812, and
> analogix,anx7818 variants.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
