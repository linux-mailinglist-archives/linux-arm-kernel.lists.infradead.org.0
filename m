Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D651FEE3ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBoZMjzjm9dnsy9Lq4y0pCj02+tCzcoB2rQ/ZbRirEc=; b=PmLqkvz0Ty5ZFh
	BUf3ZLTsU+GTIgae0GPF6TLQlBeoSwqda2YksPbdK64LVvSPKI8MJL/r7xmT14b7EIpob+09pUx85
	12+fPmvRM9Zt4SYzxO18vYyC/mKuYRyraM4xVWM+Kj8TqO8k9MlbonFWhvG2zV1U3S3o6uWJd6/68
	yO7zrJGNUsGcVNsnNq+Cabuxv9w5KG3H4nYo49PqOvDKjprQkUEpQVPndJojeBX5w3go+7h/13Mh5
	t8qWqftlwaangcUJQfwuyVkCHfimU5mCdOp9FX4s7Rox712XBrGQR6rwbmz+aPjpj4OHL0GK1A7//
	PMXgaxNF5a2OhB9E2MGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReNw-0005On-Tt; Mon, 04 Nov 2019 15:35:16 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReNX-0005Ji-Iy
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:34:55 +0000
Received: by mail-lf1-x143.google.com with SMTP id 195so12559900lfj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0gabzbcN6HoP1fcW8rRQwTiWAfln2GdvFDb/MI3l/i0=;
 b=IOqYZNx/IPFHvHpYJ+rhC42LkAiWaAau9HFoFCT7ulY5F0hQusqkGJ4/veL0R/0xDV
 cqrC6MD0dvm+RoPAwWskx9cmzLr9hkN1n2tsqYyTUTn7muIgN/T5mWFi80JDYTArpH8w
 Nqp2eL/sovyZOvpy+//buIrfJE50L31shUhsr0PjpmV5rNNmBApBtmTfsKZ4cPsw9JDj
 AY/oSs0KTHlpgRI/3KX06+Zfad9gCZ1DIZOMGSTOdmspi51cIavvIg3C5+VJnHs4Kbh4
 Kq450queF//+T6VUcfbr9R6OMwtgyFmbkAfsF9C5ai1Yywm9t8ykFqX2Q3Tb/vUSNaAl
 sNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0gabzbcN6HoP1fcW8rRQwTiWAfln2GdvFDb/MI3l/i0=;
 b=E05aSpWikr92XWr0WQmpQP70tFn8BX4+KMhhntvyoktdDeTLNGroIUm+gACUt9ikiV
 v2KukNOzS7TiUx5jKFHLXND0/13p0bB0Waq0/hojhSdiGnaX6rJIAW781JMRuZ2uiLef
 LywvaStGLR+0wcKgQrE0jPVpxn82JDrFsKPWVYB/3vCcMNMkCcNxuceWFP+4UxrHKVss
 JqjDGm5MQHrJLLDN2s1aMubpant8ikyKkbq9+kJGO7GZAMY+lJ27AwFgSPm43VJ+cS89
 DttdVn+ZttpWp5utsPOqaDeoxj+NYn3Y6vGxBeh8hoSQSoDgtymbIMEvZ8NqvkxjPL5o
 lxdw==
X-Gm-Message-State: APjAAAUaqQcAlAI5nMIlU+Dt5Wh551PerRQKF69uJbZycolH4/ssvA+g
 3s00o/dUssWNcdRso+Kfcek=
X-Google-Smtp-Source: APXvYqw/Hd3oe13Ml69hxm/kawRVKW8ejyKPwqDa5LTJm7HwGVnQEOY7hXlPSB525pBAlJDorSGHKg==
X-Received: by 2002:ac2:5df4:: with SMTP id z20mr16987159lfq.2.1572881689352; 
 Mon, 04 Nov 2019 07:34:49 -0800 (PST)
Received: from [192.168.2.145] (94-29-10-250.dynamic.spd-mgts.ru.
 [94.29.10.250])
 by smtp.googlemail.com with ESMTPSA id e14sm7517732ljb.75.2019.11.04.07.34.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Nov 2019 07:34:48 -0800 (PST)
Subject: Re: [GIT PULL 3/8] memory: tegra: Changes for v5.5-rc1
To: Thierry Reding <thierry.reding@gmail.com>, arm@kernel.org
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
 <20191102144521.3863321-3-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <2f1c8899-ffda-51f0-64f4-48aa23dc1823@gmail.com>
Date: Mon, 4 Nov 2019 18:34:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191102144521.3863321-3-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_073451_673101_DE9B324A 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDIuMTEuMjAxOSAxNzo0NSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBIaSBBUk0gU29D
IG1haW50YWluZXJzLAo+IAo+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgNTRl
Y2I4ZjcwMjhjNWViM2Q3NDBiYjgyYjBmMWQ5MGYyZGY2M2M1YzoKPiAKPiAgIExpbnV4IDUuNC1y
YzEgKDIwMTktMDktMzAgMTA6MzU6NDAgLTA3MDApCj4gCj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUg
R2l0IHJlcG9zaXRvcnkgYXQ6Cj4gCj4gICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvdGVncmEvbGludXguZ2l0IHRhZ3MvdGVncmEtZm9yLTUuNS1tZW1vcnkK
PiAKPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gOGIwNDIyNWM0NDY0NDIyZjE4NWU2
MmMyY2VkZmI5ZTIzNDQyMzgxNDoKPiAKPiAgIG1lbW9yeTogdGVncmE6IENvbnNvbGlkYXRlIHJl
Z2lzdGVycyBkZWZpbml0aW9uIGludG8gY29tbW9uIGhlYWRlciAoMjAxOS0xMS0wMSAxMDo1Nzoz
NyArMDEwMCkKPiAKPiBUaGFua3MsCj4gVGhpZXJyeQo+IAo+IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBtZW1vcnk6IHRl
Z3JhOiBDaGFuZ2VzIGZvciB2NS41LXJjMQo+IAo+IFRoaXMgY29udGFpbnMgYSBjb3VwbGUgb2Yg
Zml4ZXMgYW5kIGFkZHMgc3VwcG9ydCBmb3IgRU1DIGZyZXF1ZW5jeQo+IHNjYWxpbmcgb24gVGVn
cmEzMC4KPiAKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gRG1pdHJ5IE9zaXBlbmtvICgxMSk6Cj4gICAgICAgY2xrOiB0
ZWdyYTogQWRkIFRlZ3JhMjAvMzAgRU1DIGNsb2NrIGltcGxlbWVudGF0aW9uCj4gICAgICAgbWVt
b3J5OiB0ZWdyYTogRG9uJ3Qgc2V0IEVNQyByYXRlIHRvIG1heGltdW0gb24gcHJvYmUgZm9yIFRl
Z3JhMjAKPiAgICAgICBtZW1vcnk6IHRlZ3JhOiBBZGFwdCBmb3IgVGVncmEyMCBjbG9jayBkcml2
ZXIgY2hhbmdlcwo+ICAgICAgIG1lbW9yeTogdGVncmE6IEluY2x1ZGUgaW8uaCBpbnN0ZWFkIG9m
IGlvcG9sbC5oCj4gICAgICAgbWVtb3J5OiB0ZWdyYTogUHJlLWNvbmZpZ3VyZSBkZWJ1ZyByZWdp
c3RlciBvbiBUZWdyYTIwCj4gICAgICAgbWVtb3J5OiB0ZWdyYTogUHJpbnQgYSBicmllZiBpbmZv
IG1lc3NhZ2UgYWJvdXQgRU1DIHRpbWluZ3MKPiAgICAgICBtZW1vcnk6IHRlZ3JhOiBJbmNyZWFz
ZSBoYW5kc2hha2UgdGltZW91dCBvbiBUZWdyYTIwCj4gICAgICAgbWVtb3J5OiB0ZWdyYTogRG8g
bm90IGhhbmRsZSBlcnJvciBmcm9tIHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCgpCj4gICAg
ICAgbWVtb3J5OiB0ZWdyYTogSW50cm9kdWNlIFRlZ3JhMzAgRU1DIGRyaXZlcgo+ICAgICAgIG1l
bW9yeTogdGVncmE6IEVuc3VyZSB0aW1pbmcgY29udHJvbCBkZWJ1ZyBmZWF0dXJlcyBhcmUgZGlz
YWJsZWQKPiAgICAgICBtZW1vcnk6IHRlZ3JhOiBDb25zb2xpZGF0ZSByZWdpc3RlcnMgZGVmaW5p
dGlvbiBpbnRvIGNvbW1vbiBoZWFkZXIKPiAKPiBTb3dqYW55YSBLb21hdGluZW5pICgxKToKPiAg
ICAgICBjbGs6IEFkZCBBUEkgdG8gZ2V0IGluZGV4IG9mIHRoZSBjbG9jayBwYXJlbnQKCkhlbGxv
IFRoaWVycnksCgpJIHdhbnQgdG8gcG9pbnQgb3V0IHRoYXQgaXQgbG9va3MgbGlrZSB0aGlzIHBh
dGNoIGZyb20gU293amFueWEKc2hvdWxkbid0IGJlbG9uZyB0byB0aGlzIHB1bGwgcmVxdWVzdCBi
ZWNhdXNlIGl0IGlzIHVucmVsYXRlZCB0byB0aGUKbWVtb3J5IHBhdGNoZXMuCgpBbHNvLCB0aGlz
IHBhdGNoIGhhdmVuJ3QgZ290IGFuIGFjayBmcm9tIHRoZSBjbGsgbWFpbnRhaW5lcnMgeWV0IGFu
ZCBJCmFzc3VtZSB0aGF0IGl0IG5lZWRzIGFuIGFjay4KCkknbSBqdXN0IHdhbnRpbmcgdG8gZ2V0
IHlvdXJzIGF0dGVudGlvbiBpbiBhIGNhc2UgaWYgdGhpcyBwYXRjaCB3YXMKYWRkZWQgYnkgbWlz
dGFrZS4gSWYgaXQgd2FzIGludGVudGlvbmFsLCB0aGVuIHBlcmhhcHMgaXQgc2hvdWxkIGJlIG9r
YXkuCgo+IFRoaWVycnkgUmVkaW5nICgzKToKPiAgICAgICBNZXJnZSBicmFuY2ggJ2Zvci01LjUv
Y2xrJwo+ICAgICAgIG1lbW9yeTogdGVncmE6IFNldCBETUEgbWFzayBiYXNlZCBvbiBzdXBwb3J0
ZWQgYWRkcmVzcyBiaXRzCj4gICAgICAgbWVtb3J5OiB0ZWdyYTogQWRkIGdyMmQgYW5kIGdyM2Qg
dG8gRFJNIElPTU1VIGdyb3VwCj4gCj4gIGRyaXZlcnMvY2xrL2Nsay5jICAgICAgICAgICAgICAg
ICAgIHwgICAxNyArCj4gIGRyaXZlcnMvY2xrL3RlZ3JhL01ha2VmaWxlICAgICAgICAgIHwgICAg
MiArCj4gIGRyaXZlcnMvY2xrL3RlZ3JhL2Nsay10ZWdyYTIwLWVtYy5jIHwgIDI5MyArKysrKysr
KysKPiAgZHJpdmVycy9jbGsvdGVncmEvY2xrLXRlZ3JhMjAuYyAgICAgfCAgIDU1ICstCj4gIGRy
aXZlcnMvY2xrL3RlZ3JhL2Nsay10ZWdyYTMwLmMgICAgIHwgICAzOCArLQo+ICBkcml2ZXJzL2Ns
ay90ZWdyYS9jbGsuaCAgICAgICAgICAgICB8ICAgIDMgKwo+ICBkcml2ZXJzL21lbW9yeS90ZWdy
YS9LY29uZmlnICAgICAgICB8ICAgMTAgKwo+ICBkcml2ZXJzL21lbW9yeS90ZWdyYS9NYWtlZmls
ZSAgICAgICB8ICAgIDEgKwo+ICBkcml2ZXJzL21lbW9yeS90ZWdyYS9tYy5jICAgICAgICAgICB8
ICAgNTIgKy0KPiAgZHJpdmVycy9tZW1vcnkvdGVncmEvbWMuaCAgICAgICAgICAgfCAgIDc0ICsr
LQo+ICBkcml2ZXJzL21lbW9yeS90ZWdyYS90ZWdyYTExNC5jICAgICB8ICAgMTAgKy0KPiAgZHJp
dmVycy9tZW1vcnkvdGVncmEvdGVncmExMjQuYyAgICAgfCAgIDMwICstCj4gIGRyaXZlcnMvbWVt
b3J5L3RlZ3JhL3RlZ3JhMjAtZW1jLmMgIHwgIDEzNCArKy0tCj4gIGRyaXZlcnMvbWVtb3J5L3Rl
Z3JhL3RlZ3JhMzAtZW1jLmMgIHwgMTIzMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ICBkcml2ZXJzL21lbW9yeS90ZWdyYS90ZWdyYTMwLmMgICAgICB8ICAgMzQgKy0KPiAg
aW5jbHVkZS9saW51eC9jbGstcHJvdmlkZXIuaCAgICAgICAgfCAgICAxICsKPiAgaW5jbHVkZS9s
aW51eC9jbGsvdGVncmEuaCAgICAgICAgICAgfCAgIDExICsKPiAgaW5jbHVkZS9zb2MvdGVncmEv
bWMuaCAgICAgICAgICAgICAgfCAgICAyICstCj4gIDE4IGZpbGVzIGNoYW5nZWQsIDE3OTcgaW5z
ZXJ0aW9ucygrKSwgMjAyIGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9jbGsvdGVncmEvY2xrLXRlZ3JhMjAtZW1jLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMzAtZW1jLmMKPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
