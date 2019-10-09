Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDDED0954
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0AgUlzM8UZbKy601349+Xfq0hnmIsm1c7E2f2a0xTqg=; b=f0kgKg5gVHt9ZD
	PW0CFibCF0QLA9muv4wsuZ9q8ymIImudJmY8jp5+F+4MF8Fu23Q4+w/rxw5GMeo7PT5zptTR+qfoa
	bulYh3AvJKbKHX1OZbyWYGnre2U/WYGic9JFyssSu0dUYUNYSHZfZKZ4GuWVWkmJ+Erbwrl5hjbnu
	2jq+AeL5A25nLoXvDrk0cFkuV5kLLpgwxO4LnYUaK6q3OYH5Lm200spTwkF3u3x4zQghqQEIj6XFo
	Si0V3nCU/tke2X9g2mqxYkulbw0Aw8M7ojPjrT2vTeKaaFOlMl4yWuOdheoM5H3i6CQ7xr+V5TowG
	FIRGtJQI5cZs2bV4RMBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI75O-00047Z-KF; Wed, 09 Oct 2019 08:12:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI75E-000472-Lh
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:12:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id p30so923314pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 01:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=11B75nSfpkiHSUA7kLDSZM9qo28NOGIlqXnAmtJunQI=;
 b=hyC/2ZbDrDifzE37Wh14howiTcK3yRDDklHrqOsMBCUi4Gvz1fB5e1Qwg3mtSMqQb+
 ppKRaWCX2rOxI1qTJS0E49VuBxXP+2a4C2C86eBs993/2vt4lx1z20KvNcAEtBpMBv9H
 kDn36XlhsBDUA7szlV6MEMpKQVHx00bwVge8g6GssHCoVD6dVSxuSEa4e+sC/SyKsD/+
 QlL17FjMFZxgnCooLGAlZYjmZGXMOHvGOaEzQpekTRM2MdThx3/u3lVMY9nT9arxBRS1
 wWEsb6cL4u8RP2adDMpuxOHAQgF2jkv/sL3vO1qaE74ef8zOsotQXsDir8QYobskJ9UE
 dwMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=11B75nSfpkiHSUA7kLDSZM9qo28NOGIlqXnAmtJunQI=;
 b=GgcLMQixAySYJ4hWMePa29SIMYkqnMd4i+bLbNQbj9O56peWXQjW0Q8HE+zo4CVMii
 YYgavLm3xSDWr+FZtpZQqkOdRMBBp6ga4TaBcoBkxQ5Tt/r+kBTaO4NpFYZpNLGyQmpP
 W7ngfPMz71i3c2NkPQoeuYU7Vpd3Xn/2mHu8ITrhkZQq5OpUDXIaw/xddAouUv38+Wx3
 urKgOJ5fkNzs4isyvVo25KKOYZuSVoW0MTdAB6H5gHg9gNGFknTK0DF6zCFimvMOtroj
 pGMeshknkvAHsvZAFnElnJJatQO1hmQj+pepLYtXsTvbY0JQhljjwi1xwucIs+bhkDx1
 mx8w==
X-Gm-Message-State: APjAAAVBSwWN0l+lm49Sm5fazdMzkWuywr2d6nx6vtahKpocie01YFTL
 R2lIvig37U05hdYbb9vDS267C7rv3a4Yk3wzJqI=
X-Google-Smtp-Source: APXvYqz78hCAKbdx1xRfKxNWl6+jG4BDO/bMlHunDvw7i8+a+54Q6DZDFb9iTjJNg/rruFkAAayzrzmIJTjd3c5K1Sk=
X-Received: by 2002:a65:5a08:: with SMTP id y8mr2996887pgs.4.1570608751808;
 Wed, 09 Oct 2019 01:12:31 -0700 (PDT)
MIME-Version: 1.0
References: <1570601911-9162-1-git-send-email-Anson.Huang@nxp.com>
 <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
In-Reply-To: <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 9 Oct 2019 11:12:20 +0300
Message-ID: <CAHp75VcWXT+j5cfVzxPL+3YdgR+3uhFSb0qEDRr4YL+WenVKUQ@mail.gmail.com>
Subject: Re: [PATCH] tty: serial: imx: Only get second/third IRQ when there is
 more than one IRQ
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_011232_732561_A2BA1E35 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, dl-linux-imx <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgOSwgMjAxOSBhdCA5OjUzIEFNIFV3ZSBLbGVpbmUtS8O2bmlnCjx1LmtsZWlu
ZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgoKPiBUaGUgcGF0Y2ggaXMgZmluZSBnaXZl
biB0aGUgY2hhbmdlZCBiZWhhdmlvdXIgb2YgcGxhdGZvcm1fZ2V0X2lycS4gSQo+IHdvbmRlciBp
ZiBpdCBpcyBzZW5zaWJsZSB0byBpbnRyb2R1Y2UgYSB2YXJpYW50IG9mIHBsYXRmb3JtX2dldF9p
cnEgKHNheQo+IHBsYXRmb3JtX2dldF9pcnFfbm93YXJuKSB0aGF0IGJlaGF2ZXMgbGlrZSBfX3Bs
YXRmb3JtX2dldF9pcnEgZG9lcwo+IHRvZGF5LiBUaGVuIHRoZSBpbXggZHJpdmVyIHdvdWxkIGp1
c3QgY2FsbCBwbGF0Zm9ybV9nZXRfaXJxX25vd2Fybgo+IHdpdGhvdXQgaGF2aW5nIHRvIGNoZWNr
IHRoZSBudW1iZXIgb2YgYXZhaWxhYmxlIGlycXMgZmlyc3QuCgpJdCdzIGJlaW5nIGRpc2N1c3Nl
ZCBpbiBwYXJhbGxlbCB0aHJlYWQgYWJvdXQKcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIHdo
aWNoIHdvbid0IGlzc3VlIGEgd2FybmluZy4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBT
aGV2Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
