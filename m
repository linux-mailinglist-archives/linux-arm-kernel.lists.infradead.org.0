Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23836A5365
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AU2P3u/ek3A7HyWgGuMpQ23PCAMwcZGz2NzFjQTe6I=; b=Ixgv+9311DI0mI
	tlmvaRYgJtS6DygYlF0ZVsyNdkg0FJQw4PvTDz+mM3LLcc5e4L71L2AGg7MLqKuJlG93ZleYjVU6U
	UiOIacSB/XhPgwvRksITsKE+nggmmAHwYe97OUtGLpW7WI/jVdfGNBJ0ns05/pa0ZClcNcaEc58fX
	HMoC7p7xFYTZf4V0rcwj+k7qvtQFHNrJHQzn16ndM4Bvmb18mUur44ugPFglzXEOt7jsuDW8OU9EM
	o0qsBwmezsrrt7HdaiBcPbFQMh2CxaJddWaw45l8sGnh1JV5KT4VbT9ypPjj7gffbq/zUJ1AorEbF
	fxhtItQkHDbsJNbzWDhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iyf-00025D-D3; Mon, 02 Sep 2019 09:50:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iyK-000170-84
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:50:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id y8so13294407wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=z/iNfh9lERKCL4WNCXIHABmMvr8yzyMTtcia6mN52EQ=;
 b=F3ev0/94Lp7tRgH5QkOB7GchzXuzea7zDMr/QPIscw1kwGvE47q6u3+dDwu3Iu12WC
 gbNy68B9TnB61ZUYtjULImN4UGYq4IsfRXjBdyRPJDKodTe+woG/43DGOEka+gy4L8Ks
 y+zQf9aCd9hE9KlB2Vhl70ew//mw+HIjbwA5bjVMM4hV7ZAAE3u8eKUA/DpLqdDmsnWy
 LVs1P90/kjUlAnPerYhSn30AYhNIrcJCd0W0+X7eMOV/bANxa67nRPY7BHFSFjUVVMt2
 VihWvo4ntzvGsFSkTSkWXyxvgRnWflTJTq5QU80FbvrbeeWj1rJBHCB2PgMaYT0oGZa/
 Lv/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=z/iNfh9lERKCL4WNCXIHABmMvr8yzyMTtcia6mN52EQ=;
 b=CUkFqcL0Jkyyni7VPW2mRRrL7qWtofJfVXSBS1vuDN2UZG5Dnl3liPys3E0PMD9+mI
 wZrqJxc8Ngh247L8d4Yigw6p5T7BE5Up4E/ZdVFEC0vgTps2VwZvKXx++WA7ZI2F2N+7
 oJBIc4wJnipZSm+xyJipkqOrS0BrCYKPhJEVOzhrcviKhpk6nO34aNTqgZJ634b6oLrh
 uh2MFvPblO53/mImerscWH7EJEqSI8cDLKT94e7Ir5HI+tgt34fXtPd9B7p1uEM3uDAM
 Ro/MfcNJ6nnZ/Ngm320+52BGhZy3bXzfEG5ngSzF1z6TpgtzfVsJ2OEwL/S8pvodozOl
 KNgA==
X-Gm-Message-State: APjAAAWbbCwpSJMoD5lM5JhTnSH5JrtJnk1v0ii0rH1hLKwP7pZqbesR
 kFXb0Ik21Nj/TLsEX/TmAVdlxQ==
X-Google-Smtp-Source: APXvYqzKfwhjRcpSww0X5JvjADuGYoZnJVDaisET7pRsBYvpYFMr7Bmpd+NM8IppVRkyGVrVHrE3rQ==
X-Received: by 2002:a5d:4f05:: with SMTP id c5mr31271928wru.349.1567417803097; 
 Mon, 02 Sep 2019 02:50:03 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id y3sm28567157wmg.2.2019.09.02.02.50.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:50:02 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:50:01 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 10/13] mfd: mt6323: add mt6323 rtc+pwrc
Message-ID: <20190902095001.GV32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-11-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-11-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_025005_009427_8396DF97 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxOCBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIGVudHJ5IGZvciBydGMg
YW5kIHBvd2VyLWNvbnRyb2xsZXIgdG8gbXQ2MzIzCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9zZWYg
RnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gU2lnbmVkLW9mZi1ieTogRnJhbmsgV3Vu
ZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gQWNrZWQtZm9yLU1GRC1ieTogTGVl
IEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiBjaGFuZ2VzIHNpbmNlIHY1OiBu
b25lCj4gY2hhbmdlcyBzaW5jZSB2NDogbm9uZQo+IGNoYW5nZXMgc2luY2UgdjM6IG5vbmUKPiBj
aGFuZ2VzIHNpbmNlIHYyOiBvbmx5IHNwbGl0dGluZywgc2Vjb25kIHBhcnQgb2YgdjIgcGFydCA0
Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMgfCAyNSArKysrKysrKysrKysrKysr
KysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCgpBcHBsaWVkLCB0
aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmlj
YWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MK
Rm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
