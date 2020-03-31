Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C37519A24A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 01:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/CFon7MlIN/d8fWPNOaq9aRa3wr6r5/VUdlwYeegYg=; b=YOp50WGdsEsOay
	qWr1Zy8aj6XSyfT5Pli4piawA2D/uXvjfsjLpqMjXUfo/VGAiSnpTjfB4k3ZbWSzQ+HUdqe+15Tkk
	MXvPgejAM0qjphNCB56W5iM9HqDA9iqoWnyTiVLYGDxa0kJLBrGvxMles8E40pyQjE2thf/d91NAh
	ciajA5WcXZrHHkMI9IKOqpIHwAMX18uL7dg3Xohk3pT7SmpF9V0tTZyCDWtyPErasNUNvRNY6MQjL
	Ixjd3MwcjrWZTvEONeLgOHr/S6pm2E1n7k/5QFGGhQLX7vwGkjSRbCBjVunwm8j4JxTurQChiqVTH
	GhuXNDFYtVkcEuBkalaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJQ4m-0002Sz-F9; Tue, 31 Mar 2020 23:13:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJQ4c-0002SA-3D; Tue, 31 Mar 2020 23:13:35 +0000
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E44D82166E;
 Tue, 31 Mar 2020 23:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585696413;
 bh=9XnDVeLNtXBo+7A+ymbQWmYaZXP1cYS2bkQlhtc03pg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=J7zqVWd/5lRSv44OmqCPe15cyMfA4cypk3PPuwEoI45tJ1YAoTl5Ju1ma924UCJl6
 Z6ky4U99dLrxKDMwa+PTXGoIyPPfnsUb6LRM8u/KABhxK6I52Zyo/oUkrVgFeiVNOT
 ND0IQRvtzFnmuXNaM15v5te9g0dWSmNYMudOjc6w=
Received: by mail-ed1-f49.google.com with SMTP id e5so27413245edq.5;
 Tue, 31 Mar 2020 16:13:32 -0700 (PDT)
X-Gm-Message-State: ANhLgQ25ilQcju9N1YJSQ73a092oLSr8agA8UOxme25YYLrPM0qWSe0M
 mq4tSdE5/DOmJ4wGHQsg0mM9Bh5rEuwiGN1CRA==
X-Google-Smtp-Source: ADFU+vsI2at//4iAqFj3XbOPyjbjd8Ju2JHJo+yfvuPMtXyncAneKqKuJ3LsmHFRegjrJGdHpUpM711na8maETHC9Bs=
X-Received: by 2002:a50:ce01:: with SMTP id y1mr18621985edi.47.1585696411284; 
 Tue, 31 Mar 2020 16:13:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200331214609.1742152-1-enric.balletbo@collabora.com>
 <20200331214609.1742152-4-enric.balletbo@collabora.com>
In-Reply-To: <20200331214609.1742152-4-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 1 Apr 2020 07:13:20 +0800
X-Gmail-Original-Message-ID: <CAAOTY__9rrC3o9sTYKgSZi8n0xHdtSFoNMHOqLfQF6B_4BAGww@mail.gmail.com>
Message-ID: <CAAOTY__9rrC3o9sTYKgSZi8n0xHdtSFoNMHOqLfQF6B_4BAGww@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: mt8173: Fix mmsys node name
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_161334_155198_06CD4C67 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 ulrich.hecht+renesas@gmail.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 hsinyi@chromium.org, CK Hu <ck.hu@mediatek.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 matthias.bgg@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ05pyIMeaXpSDpgLHkuIkg5LiK5Y2INTo0N+Wvq+mBk++8mgo+
Cj4gTm9kZSBuYW1lcyBhcmUgc3VwcG9zZWQgdG8gbWF0Y2ggdGhlIGNsYXNzIG9mIHRoZSBkZXZp
Y2UsIG1tc3lzIGlzIGEKPiBzeXN0ZW0gY29udHJvbGxlciAoc3lzY29uKSBub3QgYSBjbG9jayBj
b250cm9sbGVyLCBzbyBjaGFuZ2UgdGhlIG5vZGUKPiBuYW1lIGFjY29yZGluZ2x5LgoKUmV2aWV3
ZWQtYnk6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3JnPgoKPgo+IFNpZ25l
ZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9y
YS5jb20+Cj4gLS0tCj4KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMuZHRz
aSB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTczLmR0c2kKPiBpbmRleCA4YjRl
ODA2ZDUxMTkuLmE1NWU4YzE3NzgzMiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L21lZGlhdGVrL210ODE3My5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRl
ay9tdDgxNzMuZHRzaQo+IEBAIC05MDgsNyArOTA4LDcgQEAgdTJwb3J0MTogdXNiLXBoeUAxMTI5
MTAwMCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICAgICAgICAgfTsK
Pgo+IC0gICAgICAgICAgICAgICBtbXN5czogY2xvY2stY29udHJvbGxlckAxNDAwMDAwMCB7Cj4g
KyAgICAgICAgICAgICAgIG1tc3lzOiBzeXNjb25AMTQwMDAwMDAgewo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTczLW1tc3lzIiwgInN5c2NvbiI7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHgxNDAwMDAwMCAwIDB4MTAwMD47
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmc2Nwc3lzIE1UODE3
M19QT1dFUl9ET01BSU5fTU0+Owo+IC0tCj4gMi4yNS4xCj4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtbWVkaWF0ZWsgbWFpbGluZyBs
aXN0Cj4gTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
