Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA4D1FEF6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrESXMLEX8CvJVSE4an8NA0KxtRt+KeUWM7d+lB3DVM=; b=EVSussJ3bM5SdY
	CQQ6FkvWNm9v7Lm/nfcCUlpErCFtB1rx5rRFmYjv4YC4taJ35n75hkYoWeZtNs98bJAMMDfA0qvkx
	ElXJEdyeFR/wojYpqpgPLdLtCzGrJY/WI8m9d9UwcbAy2BoaiBle0QHFDqBz5Ai2VTS9XmPzM5hpx
	x2Eq2GCOFSY7hdjATwGjPKWZ7SlZIpOjkAlplmEq2o3sF121OloCq/ozD04OEWQF9hNbKZiDujmf4
	WYVJco7ihUkfqDtSDyyiu240VJGNAtYxr31Pnn6NV80eeJd0wq2tGvc3A99MgNU56ZLwjYfBIVRfh
	yhLCpeojIeBOD8n33/rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrW6-0004Tu-GD; Thu, 18 Jun 2020 10:11:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrVj-0004LO-Mj
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:11:09 +0000
Received: by mail-wm1-x341.google.com with SMTP id b82so4600809wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 03:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ktQ5zrtv7fkY66nJnymDTuOHV70e9nRpEpC/gg5uid8=;
 b=Gc3ImwID5p/OQJOFcMx9KasuPbe4o9Q2eO8aMnhLwXU05yim9rINoCJWIAKaULpGS+
 EnNfORGb13znRrbp5t0qgUIl8vG9A5t8gwSOrTDyirjSbLYO7DAqaJr8CAj5otIsF7X1
 2SiW/vbM/nX7ZLF5FethSvHXSB+3BonnWFU0Jta7JfadEa6BW7+EBFywjvHnTMiDyAHK
 ExzGKSBJ388vBsRrP4Nv447RN98NiXkNRGoFtkGeKfhaRrRKh4ZBroubhh9hFGk4FtsK
 g7ykl9F83Vpcyir7jrR/qYBg4OVLNqc1Y9MA9GNZ4eP0xpRri9ZzqY1j+D3t3Rq/Sy6v
 63+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ktQ5zrtv7fkY66nJnymDTuOHV70e9nRpEpC/gg5uid8=;
 b=hjo23gkv5NIL/HV8Y5HXiBsizI8oRctFe/9CUCtJsp0gsdLQPtGCAH8URm71XG11Ak
 hoqW0A6vZqEcAewyvZ6Fq886o/fIUpnK5XZmX64QYXQJdWJNz2I3cFbGMDeykdyNhwBS
 GsIHGW73AxuI1yE+SwDRq4HvGibmOV1DdQNeXOWiJ78x+gHJDBVCpYdM2ftavZLbyQVW
 puoqyplpZLiYFv7np+TIayjtl9WPqhAam3M+MS1LoK4xTxuhnCDAgYpE6GZMme5iCKYa
 WFRJC9URCYags3uk/CJ3H3lDNpSk8xQ7iPssBGxiTRSmF/kWFBki6ogfK41pRaqWwux+
 gMMg==
X-Gm-Message-State: AOAM5317j2vK+CzgYvzS8wtOC1+ygmJSUNnKeztGJKB78ItnYas+CBmV
 6u1BvOY82c/Y0Sd8TDphg3bwpw==
X-Google-Smtp-Source: ABdhPJydTZI6oID1L6CWY7ac0WcexeVoNDCVkPGQm7MT81vi+NEKZ02a4wjgll0ktKIKl87lyE9kmw==
X-Received: by 2002:a05:600c:2f17:: with SMTP id
 r23mr1324691wmn.167.1592475065754; 
 Thu, 18 Jun 2020 03:11:05 -0700 (PDT)
Received: from dell ([95.149.164.118])
 by smtp.gmail.com with ESMTPSA id 67sm3087965wrk.49.2020.06.18.03.11.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 03:11:05 -0700 (PDT)
Date: Thu, 18 Jun 2020 11:11:03 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [SPAM] [PATCH v3 1/1] mfd: Add I2C based System Configuaration
 (SYSCON) access
Message-ID: <20200618101103.GD954398@dell>
References: <20200618080223.951737-1-lee.jones@linaro.org>
 <46f098524c7bf13dd6adbd1faeb8c758@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46f098524c7bf13dd6adbd1faeb8c758@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_031107_843099_B5FAF8AF 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 bgolaszewski@baylibre.com, broonie@kernel.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGEgaGEhICBTUEFNIQoKT24gVGh1LCAxOCBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToK
PiBBbSAyMDIwLTA2LTE4IDEwOjAyLCBzY2hyaWViIExlZSBKb25lczoKPiA+IFRoZSBleGlzdGlu
ZyBTWVNDT04gaW1wbGVtZW50YXRpb24gb25seSBzdXBwb3J0cyBNTUlPIChtZW1vcnkgbWFwcGVk
KQo+ID4gYWNjZXNzZXMsIGZhY2lsaXRhdGVkIGJ5IFJlZ21hcC4gIFRoaXMgZXh0ZW5kcyBzdXBw
b3J0IGZvciByZWdpc3RlcnMKPiA+IGhlbGQgYmVoaW5kIEkyQyBidXNzZXMuCj4gPiAKPiA+IFNp
Z25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+
IENoYW5nZWxvZzoKPiA+IAo+ID4gdjIgPT4gdjMKPiA+ICAgLSBDaGFuZ2UgJ2lzIENPTkZJRycg
cHJlc2VudCBjaGVjayB0byBpbmNsdWRlIGxvYWRhYmxlIG1vZHVsZXMKPiA+ICAgICAtIHMvI2lm
ZGVmIENPTkZJR19NRkRfU1lTQ09OX0kyQy8jaWYKPiA+IElTX0VOQUJMRUQoQ09ORklHX01GRF9T
WVNDT05fSTJDKS8KPiA+IAo+ID4gdjEgPT4gdjIKPiA+ICAgLSBSZW1vdmUgbGVnYWN5IHJlZmVy
ZW5jZXMgdG8gT0YKPiA+ICAgLSBBbGxvdyBidWlsZGluZyBhcyBhIG1vZHVsZSAoZml4ZXMgaDgz
MDAgMC1kYXkgaXNzdWUpCj4gPiAKPiA+IGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICB8
ICA3ICsrKwo+ID4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgICAgICB8ICAxICsKPiA+ICBk
cml2ZXJzL21mZC9zeXNjb24taTJjLmMgICAgICAgfCA5MCArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gPiAgaW5jbHVkZS9saW51eC9tZmQvc3lzY29uLWkyYy5oIHwgMjYgKysr
KysrKysrKwo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMTI0IGluc2VydGlvbnMoKykKPiA+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvc3lzY29uLWkyYy5jCj4gPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL3N5c2Nvbi1pMmMuaAoKWy4uLl0KCj4gPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCByZWdtYXBfY29uZmlnIHN5c2Nvbl9pMmNfcmVnbWFwX2NvbmZpZyA9IHsK
PiA+ICsJLnJlZ19iaXRzID0gOCwKPiA+ICsJLnZhbF9iaXRzID0gOCwKPiA+ICt9Owo+IAo+IFdo
YXQgYWJvdXQgb3RoZXIgY29uZmlncz8gZWcuIDE2IGJpdCBvZmZzZXRzLiBBbmQgcHV0dGluZyB0
aGF0Cj4gY29uZmlnIGludG8gdGhlIGRldmljZSB0cmVlLCB3YXMgYWx3YXlzIHB1c2hlZCBiYWNr
IHNvIGZhci4KCldlIGNhbiBwYXNzIGl0IGFzIGEgcGFyYW1ldGVyLCBubyBwcm9ibGVtIHRoZXJl
LiAgQWx0aG91Z2ggaXQgZG9lcwpzb3VuZHMgSC9XIHJlbGF0ZWQsIHNvIG5vdCBzdXJlIHdoeSBp
dCB3b3VsZG4ndCBiZSBhbGxvd2VkIGluIERULgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpT
ZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
