Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E1F54EC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4facuRcSNpOUGT4eoKAiLKTUDIXJyeiJqFu6+Ic6Byg=; b=iCiPHb5GnC7juy
	4/jA5kWq7FjeWSb7nC7p0/mGM/VYW7ObQVekvnoBl/s7c6hM4lDw6jyq7rXoBK4f5fQxK1VS6tcUx
	ZfvvqgLFC21EkAL6RFYa2z6Vi4+gSKGNSzoics1IrLcM7ElVY48u4pAVQIhAFplhxcHGUAHua4ZUo
	v+LCES4M22HWJ0n3uYmQFhfvNiXdj3jDF3zZuFPoRvSFcxYyESjBnKI00njJEGsegB4Wa6n/fBU3D
	S8m0nBA9TiL67ZGTpS5xfb8e2kLByyKrMFfMsZQy8CeLPcYoJLiD6W8uBwnbZ+MFHBLD0KfLZJK8o
	AGv+xKljQ3LVDs2EmotQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkW2-0008J1-4M; Tue, 25 Jun 2019 12:25:38 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkVs-0008IZ-9b
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:25:29 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so12441388lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VXFxBqw289PiWNcgire0HT3ql8msXi7Wbz9KDkqpi9s=;
 b=MRAi30L3bCnSstOAPK/5ckcFQXdc0wInrW51IaGWdmmXBFt61il5F8ZihENHrES6Sz
 A2gfTv6F6/mUQ1hGF0IliwV+O0FoVXmnwA27MN1197oDkrwe0Hi/euIeh0I/e8zRwLgI
 B96q10pu6xOvJvT96ewCQmj7xRCeReAq/kigc7RqYiguG/g1LmS2U+Jqm5eZcB10V30P
 n1xKUvlYhN7Wnj+Yn6gNqa//q0nip2EJKCYm4ov9IZvxiKcc17gouzhVRXMZya7Iff4C
 lW2YQjDxDHSucaIJuJ9qvDTzQoa0DUBHFUUnsRd1LRv4Ks9d9wHsSNTg7RA2sbTLxnRZ
 +rTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VXFxBqw289PiWNcgire0HT3ql8msXi7Wbz9KDkqpi9s=;
 b=YxQzEr7rYh9MmYJbCUdKmlKbqlUa+fIqz09BRS/GL6PYb9/7pAWeio+kGdzH2dNOkr
 ednNgCVW+0AjP97hbnqY0v9RRerUjbQSUv1xMxfQbuGy7xxXeL7XjgRf1BewDw0RnEK9
 0BtAsC6ZJtLQyF10F2JzbLf4Sk57VxqUmNdwyj6WuhJLNO0do1f/JaCc257O+IWB0PyV
 RYVe6yRw+WDuhwlfy0mscneP2qzwSVKaje8G27kHxzTX4pydcq8sLPgZA+7zmqDb+V9B
 WTk2qP9NdHHArU9h5DXnVOwVc6T1UHD5A4vK1ikpRIGd+lM6Ad/12OeH5/j1TX+y7eMz
 is+w==
X-Gm-Message-State: APjAAAUy8FClxG2bsh6j9n7zQfzEtlPp5QBVWHqH8trfyRBYVUkqKFoa
 uREFkfMZHxRPgZyYaPTl4Royxy49EAU+8NQ39Kh04g==
X-Google-Smtp-Source: APXvYqwMJafEsEK9ql82gdFybiq+Gag7JQbBkAhot7eiscPpABkzdiTqqeOrWV0XFwZvPlNTuzHyscjkjG+lDDOrlRA=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr13951212lfu.141.1561465526510; 
 Tue, 25 Jun 2019 05:25:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
 <20190617215458.32688-2-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20190617215458.32688-2-chris.packham@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 14:25:15 +0200
Message-ID: <CACRpkdbg3ewD0gexLk3+nF0ihyhnPPpWj13YDqxgvT_4urhbzg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: pinctrl: mvebu: Document bindings for
 98DX1135
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_052528_343071_B826E7B0 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 11:55 PM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> The 98DX1135 is similar to the 98DX4122 except the MPP options differ.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Patch applied as uncontroversial.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
