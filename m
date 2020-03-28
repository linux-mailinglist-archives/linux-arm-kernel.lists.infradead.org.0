Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B11196838
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 18:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ykkxh62HXRdXtEC4bSJzUnFV/e3cogcL113okjAyWGo=; b=loKD23t/5J4ge0
	jPj0fpwA7CuuxUsODR+Jc7vjX9ZPw1Ul8VwiC62BI5DYwM7ikaMSUizsrFs3rAyOMfcdcpsjSXcep
	8wVanwI+YEkjqzli3nh/PLEa0RRBv1ZtbZDu3Ulv+E79eDeYC05hPyyrNNL7i2lGhhN5J1FJ0hHkR
	i669PJ6SGvmfRAHLisMvZ61/iIBfJNwtjoB3UbTzHW8g+HIcFTG7h/9QsdJeOtAO3FTkgK8HJ3/QK
	lrqboVeHM7uHN+HBGjZTSI4f7Bu0IBBrvi7saT4T2cZSKoCNFBg1iSaYVdel2Pm/F/SFdylXkvXvC
	Cm8TCo0bvZeaFzHwjKRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIFXu-0006gS-1G; Sat, 28 Mar 2020 17:46:58 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIFXj-0006ft-HI
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 17:46:49 +0000
Received: by mail-lj1-x242.google.com with SMTP id t17so13525318ljc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 10:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=eK2xMlkSWwsuoup1xvKWf+yPR2CEQQ2vN7P0h9G7Y7A=;
 b=E5uMGh0+4kyqfkZTdjNe39L6qj3St9yarWA0+4O08SdZ6MTraqjXxE5EwwccSq+WQ5
 Ix6cyX8LRqGxc4EEfXWxi3UMkSakPNRv1JqJR3rKq7spWvSbEzTyqNRsKCmQ0zkoqZhp
 3zAuT0uagqpWFYZ1cb9uW/hZFGg2zB6EVnNOpbyMtmkq1jzkiv6Jz36Kkr0VJmqsofoX
 MoM4mdoIhqT19pHIsulSqLKL8na4Z8toXyJh7R0Ad8kp2ZpYabmJNVFoTRR+pr5vo0h+
 J1mnD2HT3RBLCgdhBhzawPFR/fZVqpmQhPYvoSyEEX1wWKdsWpKSYKt4I1GINukfhTN9
 abCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=eK2xMlkSWwsuoup1xvKWf+yPR2CEQQ2vN7P0h9G7Y7A=;
 b=WXLif8VQvCCZnp5adI9zBEB9ltBC+gBcz2+GDL7qc8ZhC1EeUbzczbx7aHtnCnwYQX
 UbK8LcOdsb+a3r1rDgdV1O7zWcbVKTiPTtaTTf4SpXoxyYRx1NgIdg2j5VB8ersq6BXG
 nOQtL914MfzgOR5TBSNpSvphwuFTWsK2J4NLwpj8HPMEy2T75+5831Zyq0Q2dnNHgpYX
 0Sq/uvc9PZmVUFu8n7wj/vcuk1t2Ja3yr5Vn5Y9CYQXkWZHuODpSOMS2fQ0jyRVsgzv4
 9tV4DY4uWhR0k4iXTvTUr5gCD9qUX5c9p9Su1Iu7ejMKpIc8HzyMfTOKXFkRfr6etVZ8
 K6fQ==
X-Gm-Message-State: AGi0PuZjuICWYTi73HqCBCH22+j84xxEyvnAd1bvB7JpQJku/DklFfqx
 tI70iG0nIsYst05u9emgVuo=
X-Google-Smtp-Source: APiQypLFzEddHHaJzorgKc18UscDVl6cJm94rT1S69oiZIu+3ev0M1QL9NrUonSfP2069pj5gqclRQ==
X-Received: by 2002:a2e:8914:: with SMTP id d20mr2612659lji.148.1585417604581; 
 Sat, 28 Mar 2020 10:46:44 -0700 (PDT)
Received: from pablo-laptop ([2a02:a315:5445:5300:4882:9b4e:5eda:ceec])
 by smtp.googlemail.com with ESMTPSA id i18sm4801119lfe.15.2020.03.28.10.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 10:46:43 -0700 (PDT)
Message-ID: <838a17416b4ed59903ae153e09842ac62584616f.camel@gmail.com>
Subject: Re: [PATCH v4 5/5] arm64: dts: Add node for ufs exynos7
From: =?UTF-8?Q?Pawe=C5=82?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, robh+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Date: Sat, 28 Mar 2020 18:46:42 +0100
In-Reply-To: <000801d60516$823fd890$86bf89b0$@samsung.com>
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171423epcas5p485d227f19e45999ad9b42b21d2864e4a@epcas5p4.samsung.com>
 <20200327170638.17670-6-alim.akhtar@samsung.com>
 <ac67cfc3736cf50c716b823a59af878d59b7198f.camel@gmail.com>
 <000801d60516$823fd890$86bf89b0$@samsung.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_104647_605478_66EC8E6F 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pawel.mikolaj.chmiel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCAyMDIwLTAzLTI4IGF0IDIxOjA1ICswNTMwLCBBbGltIEFraHRhciB3cm90ZToKPiBI
aSBQYXdlbAo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IFBhd2XF
giBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4KPiA+IFNlbnQ6IDI4IE1h
cmNoIDIwMjAgMTk6MDAKPiA+IFRvOiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJAc2Ftc3VuZy5j
b20+OyByb2JoK2R0QGtlcm5lbC5vcmc7Cj4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsg
bGludXgtc2NzaUB2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBrcnprQGtlcm5lbC5vcmc7IGF2cmku
YWx0bWFuQHdkYy5jb207IG1hcnRpbi5wZXRlcnNlbkBvcmFjbGUuY29tOwo+ID4ga3dtYWQua2lt
QHNhbXN1bmcuY29tOyBzdGFubGV5LmNodUBtZWRpYXRlay5jb207Cj4gPiBjYW5nQGNvZGVhdXJv
cmEub3JnOyBsaW51eC1zYW1zdW5nLXNvY0B2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS0KPiA+
IGtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
Cj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHY0IDUvNV0gYXJtNjQ6IGR0czogQWRkIG5vZGUgZm9y
IHVmcyBleHlub3M3Cj4gPiAKPiA+IE9uIEZyaSwgMjAyMC0wMy0yNyBhdCAyMjozNiArMDUzMCwg
QWxpbSBBa2h0YXIgd3JvdGU6Cj4gPiA+IEFkZGluZyBkdCBub2RlIGZvZSBVRlMgYW5kIFVGUy1Q
SFkgZm9yIGV4eW5vczcgU29DLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxpbSBBa2h0
YXIgPGFsaW0uYWtodGFyQHNhbXN1bmcuY29tPgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9ib290L2R0
cy9leHlub3MvZXh5bm9zNy1lc3ByZXNzby5kdHMgICAgICB8IDE2ICsrKysrKysKPiA+ID4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2V4eW5vczcuZHRzaSAgICAgICB8IDQzICsrKysrKysr
KysrKysrKysrKy0KPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2V4eW5vcy9leHlub3M3LWVzcHJlc3NvLmR0cwo+ID4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
ZXh5bm9zL2V4eW5vczctZXNwcmVzc28uZHRzCj4gPiA+IGluZGV4IDdhZjI4OGZhOTQ3NS4uYjU5
YTBhMzI2MjBhIDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9l
eHlub3M3LWVzcHJlc3NvLmR0cwo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5v
cy9leHlub3M3LWVzcHJlc3NvLmR0cwo+ID4gPiBAQCAtNDA2LDYgKzQwNiwyMiBAQAo+ID4gPiAg
CX07Cj4gPiA+ICB9Owo+ID4gPiAKPiA+ID4gKyZ1ZnMgewo+ID4gPiArCXN0YXR1cyA9ICJva2F5
IjsKPiA+ID4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiArCXBpbmN0cmwtMCA9
IDwmdWZzX3JzdF9uICZ1ZnNfcmVmY2xrX291dD47Cj4gPiA+ICsJdWZzLHB3ci1hdHRyLW1vZGUg
PSAiRkFTVCI7Cj4gPiA+ICsJdWZzLHB3ci1hdHRyLWxhbmUgPSA8Mj47Cj4gPiA+ICsJdWZzLHB3
ci1hdHRyLWdlYXIgPSA8Mj47Cj4gPiA+ICsJdWZzLHB3ci1hdHRyLWhzLXNlcmllcyA9ICJIU19y
YXRlX2IiOwo+ID4gPiArCXVmcy1yeC1hZHYtZmluZS1ncmFuLXN1cF9lbiA9IDwxPjsKPiA+ID4g
Kwl1ZnMtcngtYWR2LWZpbmUtZ3Jhbi1zdGVwID0gPDM+Owo+ID4gPiArCXVmcy1yeC1hZHYtbWlu
LWFjdGl2YXRlLXRpbWUtY2FwID0gPDk+Owo+ID4gPiArCXVmcy1wYS1ncmFudWxhcml0eSA9IDw2
PjsKPiA+ID4gKwl1ZnMtcGEtdGFjY3RpdmF0ZSA9IDwzPjsKPiA+ID4gKwl1ZnMtcGEtaGliZXJu
OHRpbWUgPSA8MjA+Owo+ID4gPiArfTsKPiA+ID4gKwo+ID4gPiAgJnVzYmRyZF9waHkgewo+ID4g
PiAgCXZidXMtc3VwcGx5ID0gPCZ1c2IzMF92YnVzX3JlZz47Cj4gPiA+ICAJdmJ1cy1ib29zdC1z
dXBwbHkgPSA8JnVzYjNkcmRfYm9vc3RfNXY+OyBkaWZmIC0tZ2l0Cj4gPiA+IGEvYXJjaC9hcm02
NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy5kdHNpCj4gPiA+IGIvYXJjaC9hcm02NC9ib290L2R0
cy9leHlub3MvZXh5bm9zNy5kdHNpCj4gPiA+IGluZGV4IDU1NTgwNDU2MzdhYy4uOWQxNmM5MGVk
ZDA3IDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3
LmR0c2kKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZXh5bm9zNy5kdHNp
Cj4gPiA+IEBAIC0yMjAsOSArMjIwLDE0IEBACj4gPiA+ICAJCQkjY2xvY2stY2VsbHMgPSA8MT47
Cj4gPiA+ICAJCQljbG9ja3MgPSA8JmZpbl9wbGw+LCA8JmNsb2NrX3RvcDEKPiA+IERPVVRfQUNM
S19GU1lTMV8yMDA+LAo+ID4gPiAgCQkJCSA8JmNsb2NrX3RvcDEgRE9VVF9TQ0xLX01NQzA+LAo+
ID4gPiAtCQkJCSA8JmNsb2NrX3RvcDEgRE9VVF9TQ0xLX01NQzE+Owo+ID4gPiArCQkJCSA8JmNs
b2NrX3RvcDEgRE9VVF9TQ0xLX01NQzE+LAo+ID4gPiArCQkJCSA8JmNsb2NrX3RvcDEgRE9VVF9T
Q0xLX1VGU1VOSVBSTzIwPiwKPiA+ID4gKwkJCQkgPCZjbG9ja190b3AxIERPVVRfU0NMS19QSFlf
RlNZUzE+LAo+ID4gPiArCQkJCSA8JmNsb2NrX3RvcDEgRE9VVF9TQ0xLX1BIWV9GU1lTMV8yNk0+
Owo+ID4gPiAgCQkJY2xvY2stbmFtZXMgPSAiZmluX3BsbCIsICJkb3V0X2FjbGtfZnN5czFfMjAw
IiwKPiA+ID4gLQkJCQkgICAgICAiZG91dF9zY2xrX21tYzAiLCAiZG91dF9zY2xrX21tYzEiOwo+
ID4gPiArCQkJCSAgICAgICJkb3V0X3NjbGtfbW1jMCIsICJkb3V0X3NjbGtfbW1jMSIsCj4gPiA+
ICsJCQkJICAgICAgImRvdXRfc2Nsa191ZnN1bmlwcm8yMCIsCj4gPiAiZG91dF9zY2xrX3BoeV9m
c3lzMSIsCj4gPiA+ICsJCQkJICAgICAgImRvdXRfc2Nsa19waHlfZnN5czFfMjZtIjsKPiA+ID4g
IAkJfTsKPiA+ID4gCj4gPiA+ICAJCXNlcmlhbF8wOiBzZXJpYWxAMTM2MzAwMDAgewo+ID4gPiBA
QCAtNjAxLDYgKzYwNiw0MCBAQAo+ID4gPiAgCQkJfTsKPiA+ID4gIAkJfTsKPiA+ID4gCj4gPiA+
ICsJCXVmczogdWZzQDE1NTcwMDAwIHsKPiA+ID4gKwkJCWNvbXBhdGlibGUgPSAic2Ftc3VuZyxl
eHlub3M3LXVmcyI7Cj4gPiA+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiA+ID4gKwkJCSNz
aXplLWNlbGxzID0gPDE+Owo+ID4gPiArCQkJcmFuZ2VzOwo+ID4gPiArCQkJcmVnID0gPDB4MTU1
NzAwMDAgMHgxMDA+LCAgLyogMDogSENJIHN0YW5kYXJkICovCj4gPiA+ICsJCQkJPDB4MTU1NzAx
MDAgMHgxMDA+LCAgLyogMTogVmVuZG9yIHNwZWNpZmljZWQKPiA+ICovCj4gPiA+ICsJCQkJPDB4
MTU1NzEwMDAgMHgyMDA+LCAgLyogMjogVU5JUFJPICovCj4gPiA+ICsJCQkJPDB4MTU1NzIwMDAg
MHgzMDA+OyAgLyogMzogVUZTIHByb3RlY3RvciAqLwo+ID4gPiArCQkJcmVnLW5hbWVzID0gImhj
aSIsICJ2c19oY2kiLCAidW5pcHJvIiwgInVmc3AiOwo+ID4gPiArCQkJaW50ZXJydXB0cyA9IDxH
SUNfU1BJIDIwMCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiA+ID4gKwkJCWNsb2NrcyA9IDwmY2xv
Y2tfZnN5czEgQUNMS19VRlMyMF9MSU5LPiwKPiA+ID4gKwkJCQk8JmNsb2NrX2ZzeXMxIFNDTEtf
VUZTVU5JUFJPMjBfVVNFUj47Cj4gPiA+ICsJCQljbG9jay1uYW1lcyA9ICJjb3JlX2NsayIsICJz
Y2xrX3VuaXByb19tYWluIjsKPiA+ID4gKwkJCWZyZXEtdGFibGUtaHogPSA8MCAwPiwgPDAgMD47
Cj4gPiA+ICsJCQlwY2xrLWZyZXEtYXZhaWwtcmFuZ2UgPSA8NzAwMDAwMDAgMTMzMDAwMDAwPjsK
PiA+ID4gKwkJCXVmcyxwd3ItbG9jYWwtbDItdGltZXIgPSA8ODAwMCAyODAwMCAyMDAwMD47Cj4g
PiA+ICsJCQl1ZnMscHdyLXJlbW90ZS1sMi10aW1lciA9IDwxMjAwMCAzMjAwMCAxNjAwMD47Cj4g
PiA+ICsJCQlwaHlzID0gPCZ1ZnNfcGh5PjsKPiA+ID4gKwkJCXBoeS1uYW1lcyA9ICJ1ZnMtcGh5
IjsKPiA+ID4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ICsJCX07Cj4gPiA+ICsKPiA+
ID4gKwkJdWZzX3BoeTogdWZzLXBoeUAweDE1NTcxODAwIHsKPiA+ID4gKwkJCWNvbXBhdGlibGUg
PSAic2Ftc3VuZyxleHlub3M3LXVmcy1waHkiOwo+ID4gPiArCQkJcmVnID0gPDB4MTU1NzE4MDAg
MHgyNDA+Owo+ID4gPiArCQkJcmVnLW5hbWVzID0gInBoeS1wbWEiOwo+ID4gPiArCQkJc2Ftc3Vu
ZyxwbXUtc3lzY29uID0gPCZwbXVfc3lzdGVtX2NvbnRyb2xsZXI+Owo+ID4gPiArCQkJI3BoeS1j
ZWxscyA9IDwwPjsKPiA+ID4gKwkJCWNsb2NrcyA9IDwmY2xvY2tfZnN5czEgTU9VVF9GU1lTMV9Q
SFlDTEtfU0VMMT4sCj4gPiA+ICsJCQkJPCZjbG9ja190b3AxIENMS19TQ0xLX1BIWV9GU1lTMV8y
Nk0+Owo+ID4gPiArCQkJY2xvY2stbmFtZXMgPSAicmVmX2Nsa19wYXJlbnQiLCAicmVmX2NsayI7
Cj4gPiBIaQo+ID4gSXMgdGhpcyBjb3JyZWN0IChhcmVuJ3QgY2hpbGQgYW5kIHBhcmVudCBjbG9j
ayBzd2FwcGVkKT8KPiA+IFRoaXMgd2lsbCBzZXQgTU9VVF9GU1lTMV9QSFlDTEtfU0VMMSB0byBi
ZSBwYXJlbnQgY2xvY2sgb2YKPiA+IENMS19TQ0xLX1BIWV9GU1lTMV8yNk0uCj4gCj4gTG9va3Mg
bGlrZSBpbiBvbmUgb2YgbXkgcmViYXNlIGl0IGdvdCBzd2FwLCB3aWxsIGNvcnJlY3QgaXQuICBU
aGFua3MgZm9yIHBvaW50aW5nIG91dC4KPiAKPiA+IEkndmUgdGVzdGVkIHRoaXMgb24gRXh5bm9z
NzQyMCAod2hpY2ggbG9va3MgbGlrZSBjYW4gdXNlIHRoZSBzYW1lIGNsb2NrIGRyaXZlciBhcwo+
ID4gZXh5bm9zNykgYW5kIGFmdGVyIGFkZGluZyBzb21lIGRlYnVnIGNvZGUgKGJlY2F1c2UgY3Vy
cmVudGx5IHdlJ3JlIG5vdAo+ID4gaGFuZGxpbmcgcmVzdWx0IG9mIHNhbXN1bmdfdWZzX3BoeV9j
bGtzX2luaXQpIGkgZ290Cj4gPiAKPiA+IHNhbXN1bmctdWZzLXBoeSAxNTU3MTgwMC51ZnMtcGh5
OiBjbGtfc2V0X3BhcmVudCByZXN1bHQ6IC0yMgo+ID4gCj4gSSB3aWxsIGNoZWNrIGlmIEkgb3Zl
cmxvb2tlZCB0aGlzIGVycm9yLgo+ID4gT24gdmVuZG9yIHNvdXJjZXMgZm9yIHRoaXMgZGV2aWNl
LCBkcml2ZXIgd2FzIHNldHRpbmcgQ0xLX1NDTEtfUEhZX0ZTWVMxXzI2TQo+ID4gdG8gYmUgcGFy
ZW50IG9mIE1PVVRfRlNZUzFfUEhZQ0xLX1NFTDEsIGFuZCB0aGVuIGl0IGRpZCBydW4gd2l0aG91
dCBlcnJvci4KPiA+IAo+ID4gc2Ftc3VuZy11ZnMtcGh5IDE1NTcxODAwLnVmcy1waHk6IGNsa19z
ZXRfcGFyZW50IHJlc3VsdDogMAo+ID4gCj4gV2l0aCB0aGlzIGNoYW5nZSwgZG9lcyBsaW5rdXAg
d29ya2VkIGZvciB5b3U/CkhpClNhZGx5IG5vdCB5ZXQsIHNvIHNvbWVvbmUgbmVlZHMgdG8gY2hl
Y2sgaXQgb24gZGlmZmVyZW50IGh3LgoKSSd2ZSBhZGRlZCBzb21lIGRlYnVnIGNvZGUgdG8gdWZz
aGNkIGFuZCBpdCBsb29rcyBsaWtlIGl0IGZhaWxzIChpbiBteQpjYXNlKSBhdCB1ZnNoY2RfZG1l
X2xpbmtfc3RhcnR1cCB3aGljaCByZXR1cm5zIDEgKGJlY2F1c2UKdWZzaGNkX3dhaXRfZm9yX3Vp
Y19jbWQgcmV0dXJucyAxKS4gVGhlIHNhbWUgZm9yIHNlY29uZCByZXRyeSBhbmQgYXQKdGhpcmQg
cmV0cnkgaXQncyBnZXR0aW5nIC0xMTAgZnJvbSB1ZnNoY2Rfd2FpdF9mb3JfdWljX2NtZC4KCk5l
ZWQgdG8gY2hlY2s6Ci0gaW4gdmVuZG9yIHRoZXJlIHdhcyAxMCBjbG9ja3MgdXNlZCBieSB1ZnMv
dWZzLXBoeSAod2hlcmUgdGhpcyBkcml2ZXIKdXNlcyA0KQotIGlmIGNhbGlicmF0aW9uIGlzIHRo
ZSBzYW1lIGluIHRoaXMgZHJpdmVyIHZzIHZlbmRvcgoKTWF5YmUgaXQncyBiZWNhdXNlIG9mIG1p
c3NpbmcgRVhZTk9TIEZNUCBEcml2ZXIgKG15IGRldmljZSBoYXMKc2VjdXJlb3MpIGFuZC9vciBz
b21lIG1pc3Npbmcgc21jIGNhbGxzIChsaWtlIGluIGNhc2Ugb2Ygc211IGNvbmZpZyk/Cj4gCj4g
PiBBbHNvIGxvb2tpbmcgYXQgY2xrLWV4eW5vczcgZHJpdmVyIHNlZW1zIHRvIGNvbmZpcm0gdGhp
cy4KPiA+IAo+ID4gPiArCQl9Owo+ID4gPiArCj4gPiA+ICAJCXVzYmRyZF9waHk6IHBoeUAxNTUw
MDAwMCB7Cj4gPiA+ICAJCQljb21wYXRpYmxlID0gInNhbXN1bmcsZXh5bm9zNy11c2JkcmQtcGh5
IjsKPiA+ID4gIAkJCXJlZyA9IDwweDE1NTAwMDAwIDB4MTAwPjsKPiAKPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
