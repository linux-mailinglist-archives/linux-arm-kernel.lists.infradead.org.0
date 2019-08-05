Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342D681760
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojhlWAqZX/0UnJQUzDY2BIIcBbAb+/vO4mY1gzXt97Y=; b=ICkUBBz6wQI+Qb
	xApxQhXv9/oRCZM4nYaduVhGsCaMkHfmbgRSBplfelLczjGluCptL1J7ItP4dHOFmZ12pH/ZocxQG
	hI+oCR5/HKVMlD4zEumm5RggCf2fC0LZM52SXY07K6iOCFZimU4aA24frQbOB5IR/OIyUAJIFU8TI
	QkHG7fZSUB8fe7+y93By2nOsGP9v2N0z6vf9xuLrnZU9D5ECN8v65p1ivTVjdkH0leIErNh/9D+tr
	GdH69bJdE4cEyY1Pcvq2mjKH61d2PcHJs62nISb/qv0ZssskpJKB5dUZz+lh4OjsanLtUVhu8D6pD
	pMnX2mB3FCa9cxZLzfeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaX3-0001b9-UB; Mon, 05 Aug 2019 10:48:02 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaWo-0001al-8H
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:47:47 +0000
Received: by mail-lj1-x241.google.com with SMTP id x25so78966444ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y8ev7idhhRdfNKj1s1Ry4AVA7oMVl5Zr3nXpss1zKaI=;
 b=ciULGFpaKJGyGIn8DOiYc74jQEChvVXjT78X89byv515QioWQ8LKIbfQAuDjjBHX0u
 2v96i5afuwQhBnrogqn47DxIdQ6IXLNkLuZlMVG4x6a1f5+CocddiYovSrGgDzIeaYl9
 eh3plobRFsDauaUG3bJ8BELTRTjE8G/gGmjrGwh7GJiYkb3tJLJcGkGeVT1dsHYihhl3
 GYFXPEWHP48uVedVSlamsufiFTMi4tv93b+CpDlI5z2Hw/Ov2d5mulyYBb78YzfeZOVC
 J9cIbZmLoNriGN4BVqAx2ZWMRZuB77qLfRD3VaDOLL88RFAs7lNl5JDiiDfL67UkuCtD
 u1Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y8ev7idhhRdfNKj1s1Ry4AVA7oMVl5Zr3nXpss1zKaI=;
 b=mJDugjsKANeUhDtzFm1TRTf0amYyddbcz//BgmhoaT+UMvXcXcuK9KAVsSBMTvDb/X
 toEjwbu8zPI6YndYYmQXeP5W3JTT323J2ZYtvrCoUmKFG8VUuy/lOlWYhBf6qZghLapM
 uOSEMvrLfKUo36qrXdQMmezBE27gNwp514QYv8tjBaMXEPaElWZ0KBtt4sGsHn3lJ2cB
 TM4FpxXouRKZM0b4POqYdohWwj850YsvFG49jIW6R6e2HhrrfYHIDvLkVu27fPCYDRWV
 Y0vL1O8ZG0r+ALq0L0e4WsI1Dx53mXcEYOpicNfs9VpC9nGOyRWvhrBNuSlACU+cOvPI
 TUAw==
X-Gm-Message-State: APjAAAUootjAjAIcv3eWLplzerF788ZtEf/g+IEv4htxPn/dNEojna+g
 KIVT5V1BxEoDkyzTjRj1RVCgcmFM4L+LVNE4nCTXDg==
X-Google-Smtp-Source: APXvYqwLJr3uamyVrePIy7GYeTGTKZVVFmuCgCeDV0lQp/Tg1tMYwqSStWcsZi8QVF2EtXjzVZWC8D1lN3Mn23V8cVg=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16495379ljs.54.1565002064570; 
 Mon, 05 Aug 2019 03:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au>
 <20190724081313.12934-3-andrew@aj.id.au>
In-Reply-To: <20190724081313.12934-3-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:47:32 +0200
Message-ID: <CACRpkdYoiWwm7SeXxWgpJcoiRcNV28CDC3F8FVx5my2Q0KSvvA@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: aspeed: Document existence of deprecated
 compatibles
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_034746_295340_A1613286 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> Otherwise they look odd in the face of not being listed in the bindings
> documents.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
