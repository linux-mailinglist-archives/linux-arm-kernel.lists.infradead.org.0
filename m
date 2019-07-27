Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CFC77BC1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 22:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9M20fWRG/+kkYsfbqBKru06odwBOUxLz7bu+k9COA4=; b=fS+m0uemDBMdGB
	PQZZYyTLdRLwRg2muZBF47etVbbvhJ38mXa6Oi539t6npg1Pc7Q+aGDRAGap/wTyASj9omHr6tXVY
	dBcIqvj00eg1T6+70/gWij0AYb6cRJLEU5609dOnur75VszW9IP0JllB1MStLSONVVkcTLnHN4b5y
	0XIOowl97KRdFA6i5c39449T1RKCks64wvfz/IYzP/ZhVTksxsRoZI7wMByL34DkAE+pnpvQLBk3F
	tJ+ON337x+9kzbcWWwG0Xc1khNqjzid0qiQA6e/5nc3xJmdt8almW4Aclzt8peEB9mula+OfpdajL
	0PManG+l5rDkoy+RNnng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrT8l-00011m-L6; Sat, 27 Jul 2019 20:18:03 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrT8Z-000113-Fn
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 20:17:52 +0000
Received: by mail-lf1-x144.google.com with SMTP id c9so39312940lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Jul 2019 13:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TNmkt6r1wwZluVwfnTTUGV7AKJv+CJ4rclhv3bynhgE=;
 b=ru73Yj2pRqQDLD6iKXAYSgjhlhEIgBZZQT02f+jLPD8yVaXpKCY7K7LNKQSrKiJ2OL
 aAukl8H4Z7Jz0FXAa5MjGOVQsxNtA5b8RLTFH1vO/bVKf3EDt1e1XwTaNXhUU+dtrd5+
 bMSbDJxIGosG9XvFJBPNJ5he9UGUME7Gglvl+Ow19zvHJ/Ov8tQ7sC08p1u69oc0a6mX
 kvE5Ktgn3O/zZpohQMzl/iuAiWrn5yjuqFPsgpQszQSv5p2/YjS5Gp8P1BJzb9zwjYsW
 aiLED55ID7afVvRriFX0FFfuucsVOdye1JARsOta/7Wuu7vr3+wnVc+wX/oAk2MZVk9n
 jRbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TNmkt6r1wwZluVwfnTTUGV7AKJv+CJ4rclhv3bynhgE=;
 b=dnwqbu0BMgphICUmM50x2n1rSbFiDtO+6AhfyShY7ESKo3h7D+jWBZYq+TggT5i9sO
 RUWF6dxZvQ2UY2uzveaNXENjRD1JqrpJgEjZlI5UYZiRZlAfd22rRddn7LtTvYv98Sr1
 XdLDQTGIAG+CuSMIUXQnsd7YqUje2H7/5QiglJd7nQOcMxxFzChbXsQj3HbHCwCuzZVb
 r5Fpr64A7XE8xIuzPUcBAw3upsDQUAdrN+5XrH9D/DKK3FzVEuIDQXCDBN/A48UA9gD6
 dnjnd/4vuNjxEwG+/nVpgIukoF2vPxkkaNYVWSbBgZZ5w/nwjWUVymkQ2bq28s3qlLT7
 62Dw==
X-Gm-Message-State: APjAAAWZBLnmjW0rZzXaJyF7fVH/hK+6DwjZy4oNoaAUe/KkSq0DHMvB
 mgFlDLhpWI7vVngCFP532u9U6u5+z7+y3I2tVrw=
X-Google-Smtp-Source: APXvYqxpSbR1Bjz4XI/bIwcJDaFltZanQO8EpuyDV/1mHmh80RcaDU5FYXYbDZXzcAhwMCy9dV3VjhYwFCUXJT14/aM=
X-Received: by 2002:a05:6512:29a:: with SMTP id
 j26mr16237912lfp.44.1564258668333; 
 Sat, 27 Jul 2019 13:17:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <20190727182636.GA7170@bogon.m.sigxcpu.org>
In-Reply-To: <20190727182636.GA7170@bogon.m.sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 27 Jul 2019 17:17:50 -0300
Message-ID: <CAOMZO5C_g5bO-yqhoLbb6geUcmzi4necjdQ_P2tROq2vzEPOqQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_131751_529942_FAED203B 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 linux-clk <linux-clk@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, dl-linux-imx <Linux-imx@nxp.com>,
 "rui.zhang" <rui.zhang@intel.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Daniel Baluta <daniel.baluta@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpPbiBTYXQsIEp1bCAyNywgMjAxOSBhdCAzOjI2IFBNIEd1aWRvIEfDvG50aGVy
IDxhZ3hAc2lneGNwdS5vcmc+IHdyb3RlOgoKPiBJIG5vdGljZWQgYSBib290IGhhbmcgeWVzdGVy
ZGF5IG9uIG5leHQtMjAxOTA3MjYgd2hlbiBsb2FkaW5nIHRoZQo+IHFvcmlxX3RoZXJtYWwgd2hp
Y2ggSSB3b3JrZWQgYXJvdW5kIGJ5IGJsYWNrbGlzdGluZyBpdC4gVGhlCj4gZnNsLGlteDhtcS10
bXUgbm9kZSBzcGVjaWZpZXMgYSBjbG9jayAoSU1YOE1RX0NMS19UTVVfUk9PVCkgYnV0IGRvZXMg
bm90Cj4gc2VlbSB0byBlbmFibGUsIHNob3VsZG4ndCBpdCBkbyBzbz8KClllcywgSSB0aGluayB5
b3UgYXJlIHJpZ2h0LgoKSSBkb24ndCBoYXZlIGFjY2VzcyB0byBhIGlteDhtcSBib2FyZCBhdCB0
aGUgbW9tZW50LCBidXQgc29tZXRoaW5nCmxpa2UgYmVsb3cgd291bGQgcHJvYmFibHkgaGVscDoK
aHR0cDovL2NvZGUuYnVsaXgub3JnL3BkODhqcC04MTIzODEKCklmIGl0IGhlbHBzLCBJIGNhbiBz
ZW5kIGl0IGFzIGEgZm9ybWFsIHBhdGNoLgoKUmVnYXJkcywKCkZhYmlvIEVzdGV2YW0KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
