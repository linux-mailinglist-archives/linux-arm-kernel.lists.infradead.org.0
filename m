Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8539C59EC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIBX9lAyjgXeX+SJDGaPXLoMOV7dOsCVGc+k8jtVl/I=; b=YxiTGVutnBA9CG
	zIhks6FfTcQC7Ci0uBTOu/+q6noXK25gKv4TycKX5dPrzLHQ7VxMV3iWTynrkVE4bDpvZ5iWw215y
	1E4HcRNzvnOIBB1ZZN+KToOmarqCPtGMw6BxS2VQA6IUsyhhqJfrH/3DBG4w1EpXSwzUF1t5TxFl4
	K/TZWUI8EY1sUqpKOqJPvM8u4s1NE7Njwt6EpKXE1CQiNEgvYvNc2O/VCBb0gDKxPl1r1f6T09+lY
	nV6H06jTIdTK+wuvZ3/wDjubfpN6v4gk3tSLb3Z9K3IevKkwnTvLnlvHMjx2AYXlEFtHanlEwTDN5
	ECGyrnCc5UCSxDp0fACg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgsjf-0006Oc-R3; Fri, 28 Jun 2019 15:24:23 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgsjT-0006Nn-M6; Fri, 28 Jun 2019 15:24:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561735437;
 bh=nshWUM9Ial/mf04VgQojEVFHvNnxFuhVht1LXxXTMjs=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=V005/t26iHPy3IYQysg9nJ0s7iRbYBYACP3+SsPbrniz9VehXXgpMHAXX1LEzi5OA
 yyY78BMlRdBJP9fiHd3DpHiHH09RgAO3YZFJCWRwFXxc9P+2PcVsDT0n6BsvR8P89r
 UyyDRHnEhB4jfbTwTX6CWRx+ClcoFlZFwBb6G/Go=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.111]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MLNpK-1hgKlT0DeU-000fxr; Fri, 28
 Jun 2019 17:23:57 +0200
Subject: Re: [PATCH] spi: spi-bcm2835.c: Fix 3-wire mode
To: =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>, broonie@kernel.org,
 eric@anholt.net, Martin Sperl <kernel@martin.sperl.org>,
 Lukas Wunner <lukas@wunner.de>
References: <20190628123023.4696-1-nuno.sa@analog.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <1b932c61-982b-aae0-1fef-3c574e7d17eb@gmx.net>
Date: Fri, 28 Jun 2019 17:23:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190628123023.4696-1-nuno.sa@analog.com>
Content-Language: en-US
X-Provags-ID: V03:K1:g5PhiWHkkz3XBbA68000ZtOOSFncG6Lh3B7zaH8UEnRmlj9LSu7
 bvwDBwyI0hEnEc1mKxmBfRUfWu4NMRO99rufOyff5Dc3tU/uzCvLZl0yU5GJ0onkdKhaxwK
 QJuHUwZ5UmDRqy28J14hzi+eF2h1Eug2xrdoDjJyWetD9YCPZQp6orzz9UjxcP/Ji6lyozO
 TcrGlRAXcpDq/LoiaH+Cw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:A0rZTWBd6s8=:ZnhyxFh1FnnJ0ZEpCDPvE5
 qzRz2NSk4OCFxG8VdEBssbVdpjlBuInjlZ14cN9CrAdMlriiPBa09KL5jjXtwXfenqLtdsgtB
 WC48DFzggtufVS6A3BT3hj6RFJqmobsSRU57noFTrhRQg8jOvJS61KFFey6JXZ0l2WTJH3OQf
 mWwcffrfwU16E6Kla5dMYv8ZH6uvnamFVuPpgiPmQshK4S5G+/BYhdQv89krlgsXHvhHkYGLH
 wlv7f/9rHD6T8DhHwjf0vfwc3AnG3sAidHWFHjYtvIX3eu6WdTtA0ScPxXxNlNUKpts7ZfWNi
 H5QVS1vF/8PnY/m2Y5Hz8727SetXYkV9o8HC1yfKQmyBcT+NgZGDGJa95jGdWQHc+9TAKFSij
 Q2q7k/Sbtxsm9utnZ1+4mmilPZZRtrsD2d4e/hup6VuTQE2OdMWwQYAy+FAIyqj8DR1yJzON2
 D523eJKfzUTIt2JZTMOtEUT/pn4JCuHdfvT3UbHsG6vhWvjWmY/qeVOg0Bhp/rDNcfZzz0BYW
 CMfRKQgkXqkjpqDz1l7MApNQGDucLwX8NaLbkU/KBZu934WPp0AKk/4KSkL8ixH/Mi5T0Gdn4
 9EBnvQm7jSTakj5i4JTQez1rGceYVLN/AYfuS0WK9KLE75mcef86acwJILjmoB8ilSu5uqyx2
 GqtynnfaBlJrVkex+vvaYdYtlW+rv7Ti6xq+Jd84H+VYtP3UQSqoUKOaKLWUPAf0v3kobq+we
 C/2NN+5n5TY/OEOygLuQkyfBt9ZoRmJk9MdeDrX7RPhVk5M6SV9FhMvE4xIy8wryS5jQRLKyr
 K7HT3GROuQUbWVhMOh55appdoJYfn7n1d4VX+r5ziOO9+TXTZzij8Tow6VpJZNqnWmyYgFE2N
 /04vJ+cb+LB++ula10ICgxbkHK1r0nqoTVKsmoZrHUCfZM9U0TAX2LvFf5x/B48nWPeGOPCkH
 4iT21LjFFP/q0avGdDvR/mpHme1rh0eLfgm39tl6vFOFp45kcj45iXaM3o046hDWPu6HsMYUO
 q1qzqpyprh8UQ2Je23/YHFuxC2fQELlZA6kMOCW5Bt05iBYgrS0TseNXMKkG+IdD/6UQLEczV
 Mkbi5utSmXKR/4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_082412_057357_0720F760 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: f.fainelli@gmail.com, sbranden@broadcom.com, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTnVubywKCkFtIDI4LjA2LjE5IHVtIDE0OjMwIHNjaHJpZWIgTnVubyBTw6E6Cj4gQXMgc3Rh
dGVkIGluCj4gaHR0cHM6Ly93d3cucmFzcGJlcnJ5cGkub3JnL2RvY3VtZW50YXRpb24vaGFyZHdh
cmUvcmFzcGJlcnJ5cGkvc3BpL1JFQURNRS5tZCwKPiBvbmUgb2Ygcnggb3IgdHggYnVmZmVyJ3Mg
bXVzdCBiZSBudWxsLiBIb3dldmVyLCBpZiBETUEgaXMgZW5hYmxlZCwgdGhlCj4gZHJpdmVyIHNl
dHMgdGhlIFNQSV9DT05UUk9MTEVSX01VU1RfUlggfCBTUElfQ09OVFJPTExFUl9NVVNUX1RYIG9u
IHRoZQo+IGNvbnRyb2xsZXIgZmxhZ3MuIEhlbmNlLCB0aGUgc3BpIGNvcmUgd2lsbCBwcm92aWRl
IGR1bW15IGJ1ZmZlcnMgZXZlbiBpZgo+IG9uZSBvZiB0aGUgYnVmZmVycyB3YXMgc2V0IHRvIG51
bGwgYnkgdGhlIGRldmljZSBkcml2ZXIuIFRodXMsIHRoZQo+IGNvbW11bmljYXRpb24gd2l0aCB0
aGUgMy13aXJlIGRldmljZSBmYWlscy4KPgo+IFRoaXMgcGF0Y2ggdXNlcyB0aGUgcHJlcGFyZV9t
ZXNzYWdlIGNhbGxiYWNrIHRvIGxvb2sgZm9yIHRoZSBkZXZpY2UgbW9kZQo+IGFuZCBzZXRzL2Ns
ZWFycyB0aGUgU1BJX0NPTlRST0xMRVJfTVVTVF9SWCB8IFNQSV9DT05UUk9MTEVSX01VU1RfVFgg
b24gYQo+IHBlciBzcGkgbWVzc2FnZSBiYXNpcy4gSXQgYWxzbyBhc3N1bWVzIHRoYXQgRE1BIGlz
IG5vdCBzdXBwb3J0ZWQgb24KPiBoYWxmLWR1cGxleCBkZXZpY2VzLgo+Cj4gU2lnbmVkLW9mZi1i
eTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KCmkgbmV2ZXIgdGVzdGVkIHRoZSAzLXdp
cmUgbW9kZS4gQ291bGQgeW91IHBsZWFzZSBkZXNjcmliZSB5b3VyIHRlc3Qgc2V0dXA/CgpATWFy
dGluLCBATHVrYXMgQXJlIHlvdSBmaW5lIHdpdGggdGhpcyBwYXRjaD8KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
