Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558251A001
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 17:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LKC05twcJLc8J3Qd2jtZZNLmVD6LSaINRFZiaac4Gw=; b=YR+7/UzgvWjyxD
	zcCvE8a0h3Mpsj2gBIqE+9PWYusYPO7r9co3oYfj7psBCORglBwfGQtbxcPs+xzEYxvddX5yZVA/A
	1LIC52VjLadug7mMIKsKL9g4Z1HoboQjtQVpZgk2pY7LakYzwUpD/w+kQGR2grlNQG5mhJo5WRuq5
	EeNaJ0TUHvX5czx0QWy1BJ2lCriPsnx4TZ2Xn3ylQ2G6+elqj7kE8FKmHU9o0CPUE0pErWeAmTDR9
	WVn1PDP+1lwmur23eQ7f9gCfDAe/rmzPGZi/T433ByCNHSCqWMh5Y9v2ml11DgFIfNzONSqXEpsrX
	F70s5/OCsEYRi7GjUtwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7Iz-0003yd-PP; Fri, 10 May 2019 15:19:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7Ir-0003y9-SK
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 15:19:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id j187so7934772wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 08:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=hfI45TE1I5uwK0Bfe/252jb7t90fCE1bIelVOQNQaUM=;
 b=hTSM6nL3NXhJDSGIenedVMXQCAahPRhCKQONbsUCkgElASVaWCoXoB/enwAMkt3HnW
 9yW7IpAGGEd/XrkSdUn70qhMdE7GjAlOnzRjg9V0B9RBCLHYdS1lagxRofNG4pBt4BoQ
 wxZtYN8A6k++tmlCAieXsGtjdnbtAm1xxlgrZyPrhQUAUmf9LQV/JlHzGLnGGIUTJiE/
 RfrnhNIItnQj4F/hWUel5GJxlmSnfvE8SmepuANJA1AgPYAZ+ww99Wr2IKK2iEMyG7qS
 WvhC3oaML3ks38p9YEBQQ7k2aT9F+QNw6j1UP3Q296UMFRpJJ6/wKAVIHkKOfq8/gm89
 soJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=hfI45TE1I5uwK0Bfe/252jb7t90fCE1bIelVOQNQaUM=;
 b=jp7cKzHeZq8elBi98M2UWaznGLs6tk2542qahYpVRbX4V2an9uPxHybk+g0x+nw6K3
 9+iscOT5qg6sQivqB0Fje9kg6xlVcaJ3HGsKVpTnW0p2gzmibdnaPJiWbIrQ/6nujM5W
 Q7aeat7yS0Q+zYalEbDT0QcjSa4JpIYyslk3XabDUq6XJ6V0bR94QCwX3MfFeIUHDThL
 0zhkb/BbB5rgYolR1O//NjecVJzRlveNCpAl6Rt9lMFQC8q2lU7p7e4vtx2Re6GdYFhu
 Xo1nvAWGDfl3HsvOj2PVFh13ppMsw7X3zp/yg946ASzWW7DoOeD9I3sCrngUhSutWHxT
 T39Q==
X-Gm-Message-State: APjAAAVhgOQy9lPoIni2V4v2pB1eRpHz9/iw3z371cybr+KHgxd1JOjc
 uTa3gwUjZKTElt3uzXQl5abMsA==
X-Google-Smtp-Source: APXvYqybXr+vcsOtoC6cNdTKe08GTN1LUn7gnJpq13Ga3bAoBaeBpdNLmgGY1GT+GtndyMTjIbD3zg==
X-Received: by 2002:a1c:a008:: with SMTP id j8mr7652413wme.73.1557501556269;
 Fri, 10 May 2019 08:19:16 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id c131sm6807619wma.31.2019.05.10.08.19.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 08:19:15 -0700 (PDT)
Date: Fri, 10 May 2019 16:19:12 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: [GIT PULL v2] Immutable branch between MFD and Pinctrl due for the
 v5.2 merge window
Message-ID: <20190510151912.GB4319@dell>
References: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
 <20190510072314.GC7321@dell> <20190510151556.GA4319@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510151556.GA4319@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_081917_977572_336A2E81 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hhbmdlIG9mIHN1YmplY3QgbGluZSB0byB2MjoKCioqIENvbnRhaW5zIGZpeCBmb3IgaTM4NiBi
dWlsZCBicmVha2FnZSAqKgoKRW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29t
bWl0IGU5M2M5Yzk5YTYyOWM2MTgzN2Q1YTdmYzIxMjBjZDJiNmM3MGRiZGQ6CgogIExpbnV4IDUu
MSAoMjAxOS0wNS0wNSAxNzo0Mjo1OCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCBy
ZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvbGVlL21mZC5naXQgdGFncy9pYi1tZmQtcGluY3RybC12NS4yLTEKCmZvciB5b3UgdG8g
ZmV0Y2ggY2hhbmdlcyB1cCB0byA5YWYyZGU3NjU3ZjVhNTJmOWUxNWFlYmI2ZjkzNDhmOWI4ZjI1
MGE2OgoKICBwaW5jdHJsOiBLY29uZmlnOiBGaXggU1RNRlggR1BJTyBleHBhbmRlciBQaW5jdHJs
L0dQSU8gZHJpdmVyIGRlcGVuZGVuY2llcyAoMjAxOS0wNS0xMCAxNjowOTo1NiArMDEwMCkKCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KSW1tdXRhYmxlIGJyYW5jaCBiZXR3ZWVuIE1GRCBhbmQgUGluY3RybCBkdWUgZm9yIHRo
ZSB2NS4yIG1lcmdlIHdpbmRvdwoKQ29udGFpbnMgZml4IGZvciBpMzg2IGJ1aWxkIGJyZWFrYWdl
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCkFtZWxpZSBEZWxhdW5heSAoNSk6CiAgICAgIGR0LWJpbmRpbmdzOiBtZmQ6IEFk
ZCBTVCBNdWx0aS1GdW5jdGlvbiBlWHBhbmRlciAoU1RNRlgpIGNvcmUgYmluZGluZ3MKICAgICAg
bWZkOiBBZGQgU1QgTXVsdGktRnVuY3Rpb24gZVhwYW5kZXIgKFNUTUZYKSBjb3JlIGRyaXZlcgog
ICAgICBkdC1iaW5kaW5nczogcGluY3RybDogZG9jdW1lbnQgdGhlIFNUTUZYIHBpbmN0cmwgYmlu
ZGluZ3MKICAgICAgcGluY3RybDogQWRkIFNUTUZYIEdQSU8gZXhwYW5kZXIgUGluY3RybC9HUElP
IGRyaXZlcgogICAgICBwaW5jdHJsOiBLY29uZmlnOiBGaXggU1RNRlggR1BJTyBleHBhbmRlciBQ
aW5jdHJsL0dQSU8gZHJpdmVyIGRlcGVuZGVuY2llcwoKIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQvc3RtZngudHh0ICAgIHwgIDI4ICsKIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BpbmN0cmwvcGluY3RybC1zdG1meC50eHQgIHwgMTE2ICsrKwogZHJpdmVycy9tZmQvS2Nv
bmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTMgKwogZHJpdmVycy9tZmQv
TWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMv
bWZkL3N0bWZ4LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNTQ1ICsrKysrKysr
KysrKysrCiBkcml2ZXJzL3BpbmN0cmwvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAxNCArCiBkcml2ZXJzL3BpbmN0cmwvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgMSArCiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1zdG1meC5jICAgICAgICAgICAg
ICAgICAgICB8IDgyMCArKysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvbGludXgvbWZkL3N0
bWZ4LmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTIzICsrKysKIDkgZmlsZXMgY2hhbmdl
ZCwgMTY2MSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdG1meC50eHQKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9waW5j
dHJsLXN0bWZ4LnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL3N0bWZ4LmMKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1zdG1meC5jCiBjcmVhdGUg
bW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvc3RtZnguaAoKLS0gCkxlZSBKb25lcyBb5p2O
55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
