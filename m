Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260221EB13E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 23:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+3dtN5Mb3KitvktroZ1mjWtzuzRLURgVO8zrPXTvAE=; b=s1HfiYan2LGgcD
	U+lA+F1WjBy/EQnCcuiix7B2Jlyj0+xSB2zoD9MpmZ//sByWjLhbkzVkC+S5RrqCAVuTl+LvTM+Lr
	otyXvjfOs1IqrprjNOjsboX+dGNyZ+kQHvzQE0iORbu1A0sNfKcSu75FyX0g/4xtEvD5+yTf2wLgD
	66PaeXf4DzedPFFAhkll2bU+kX4dwa1OiLyJYJpZrjcCIcdHzR7QeAsB1MigbJ2DSiI11vBCqwolg
	Ed2H9yyzC8cCNdhJULRh5848OOG3r78F0yWvrBvIuZxesLVVRP+zF34+spa6i3F5EFVfJibaLLTZE
	C37QC+c+rHkAbuLXOeLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfsEj-0006sO-GQ; Mon, 01 Jun 2020 21:44:49 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfsEV-0006pg-Lg
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 21:44:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id e1so1317714wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 14:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qqOi9XVkzEqBE1rgTfwzfPJ8XwX72091Extww43XdB0=;
 b=BLUBXAlsbcW7Id0UV+YkyUmxE0jzUe0/jTCXnNN4S8dLK5/1aj1C/RlHrWFxV1AwyH
 6GbdjWZyiEzX2SGei8S9rFvzqJyLKzA9Iy1wx2DpNKBEIC7EvyM/NTa3QPflZz7Q+ctF
 ymXXXQNdt5EUCszEr9mNqRiaL85A+fJwEzmckf2Kn1c5Kj4vkhgcAvTDk3fbqqPaWI6M
 cirigyYvKk2PguC2yqvcAtCchyS4BOP//JBSjBzcOvPA9eIXC1GzF9l4PAcWwI/C7xU5
 L3laXdnfYY+55kcVzKEzfzrpIagABRawHXTr1HqGHv8f0SlrtfRQGIBxyD8Oa8lGahS5
 e7HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qqOi9XVkzEqBE1rgTfwzfPJ8XwX72091Extww43XdB0=;
 b=ct6I/eQY1E2cFhw0NzfkHJaZ1164YdBmD+5w9iBqb3sNIQqt8Fm1WKhc8JOxFEmLSS
 6f2AafvhZGlBJheqW/+CZ21gDqt2PQ4OUYp6x8BLSG+5eFerLpNYzz+vlV3mCeWhYF7k
 uGc6kMBYeKjop8QLOgRChDcdPgqIv5ALW6lsUEqvwQjHnK1bMIfQrZSieJ94+saBRLxt
 m+51C/b2/Ambi1XXQM51wwcIoINu/EwcAWWV0WkKzPhWAJ8gW6OIJB3dX1cO1xZ07y75
 16r5/OlG57xoV2kC9oG0hog19v2ml2sRVsanXmCFJflMMi+7GCumNfJ+1qIsslzQotxe
 iGRA==
X-Gm-Message-State: AOAM531KmNguzARm4/MBWjm2Bp2UQiIb077poP0JC3866EYldOVjSWcW
 bvKGLfnoj423VjPJdPnOEYPfJg==
X-Google-Smtp-Source: ABdhPJxAkSTXgDmNloFKRd9lVGwwLE5uAp68LgGpm5gXOB9wVVSaY/AqsZoSHbg0AzWXmkv4CYHlkA==
X-Received: by 2002:a5d:490f:: with SMTP id x15mr23274786wrq.259.1591047871147; 
 Mon, 01 Jun 2020 14:44:31 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:e125:f600:eb3c:705b?
 ([2a01:e34:ed2f:f020:e125:f600:eb3c:705b])
 by smtp.googlemail.com with ESMTPSA id q4sm781499wma.47.2020.06.01.14.44.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 14:44:30 -0700 (PDT)
Subject: Re: [PATCH v8 4/8] PM / EM: add support for other devices than CPUs
 in Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200527095854.21714-1-lukasz.luba@arm.com>
 <20200527095854.21714-5-lukasz.luba@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <d45e5592-8e11-858b-d3a3-2ec9ce1d1f54@linaro.org>
Date: Mon, 1 Jun 2020 23:44:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200527095854.21714-5-lukasz.luba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_144435_753010_A54C042A 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, mka@chromium.org, robh@kernel.org,
 amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com, khilman@kernel.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de,
 rui.zhang@intel.com, alyssa.rosenzweig@collabora.com, orjan.eide@arm.com,
 daniel@ffwll.ch, b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 rostedt@goodmis.org, matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com,
 airlied@linux.ie, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, rdunlap@infradead.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDUvMjAyMCAxMTo1OCwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9y
IG90aGVyIGRldmljZXMgdGhhbiBDUFVzLiBUaGUgcmVnaXN0cmF0aW9uIGZ1bmN0aW9uCj4gZG9l
cyBub3QgcmVxdWlyZSBhIHZhbGlkIGNwdW1hc2sgcG9pbnRlciBhbmQgaXMgcmVhZHkgdG8gaGFu
ZGxlIG5ldwo+IGRldmljZXMuIFNvbWUgb2YgdGhlIGludGVybmFsIHN0cnVjdHVyZXMgaGFzIGJl
ZW4gcmVvcmdhbml6ZWQgaW4gb3JkZXIgdG8KPiBrZWVwIGNvbnNpc3RlbnQgdmlldyAobGlrZSBy
ZW1vdmluZyBwZXJfY3B1IHBkIHBvaW50ZXJzKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWthc3og
THViYSA8bHVrYXN6Lmx1YmFAYXJtLmNvbT4KPiAtLS0KClsgLi4uIF0KCj4gIH0KPiAgRVhQT1JU
X1NZTUJPTF9HUEwoZW1fcmVnaXN0ZXJfcGVyZl9kb21haW4pOwo+ICsKPiArLyoqCj4gKyAqIGVt
X2Rldl91bnJlZ2lzdGVyX3BlcmZfZG9tYWluKCkgLSBVbnJlZ2lzdGVyIEVuZXJneSBNb2RlbCAo
RU0pIGZvciBhIGRldmljZQo+ICsgKiBAZGV2CQk6IERldmljZSBmb3Igd2hpY2ggdGhlIEVNIGlz
IHJlZ2lzdGVyZWQKPiArICoKPiArICogVHJ5IHRvIHVucmVnaXN0ZXIgdGhlIEVNIGZvciB0aGUg
c3BlY2lmaWVkIGRldmljZSAoYnV0IG5vdCBhIENQVSkuCj4gKyAqLwo+ICt2b2lkIGVtX2Rldl91
bnJlZ2lzdGVyX3BlcmZfZG9tYWluKHN0cnVjdCBkZXZpY2UgKmRldikKPiArewo+ICsJaWYgKElT
X0VSUl9PUl9OVUxMKGRldikgfHwgIWRldi0+ZW1fcGQpCj4gKwkJcmV0dXJuOwo+ICsKPiArCWlm
IChfaXNfY3B1X2RldmljZShkZXYpKQo+ICsJCXJldHVybjsKPiArCj4gKwltdXRleF9sb2NrKCZl
bV9wZF9tdXRleCk7CgpJcyB0aGUgbXV0ZXggcmVhbGx5IG5lZWRlZD8KCklmIHRoaXMgZnVuY3Rp
b24gaXMgY2FsbGVkIHRoYXQgbWVhbnMgdGhlcmUgaXMgbm8gbW9yZSB1c2VyIG9mIHRoZQplbV9w
ZCwgbm8/Cgo+ICsJZW1fZGVidWdfcmVtb3ZlX3BkKGRldik7Cj4gKwo+ICsJa2ZyZWUoZGV2LT5l
bV9wZC0+dGFibGUpOwo+ICsJa2ZyZWUoZGV2LT5lbV9wZCk7Cj4gKwlkZXYtPmVtX3BkID0gTlVM
TDsKPiArCW11dGV4X3VubG9jaygmZW1fcGRfbXV0ZXgpOwo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xf
R1BMKGVtX2Rldl91bnJlZ2lzdGVyX3BlcmZfZG9tYWluKTsKPiAKCgotLSAKPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5h
cm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIg
fAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
