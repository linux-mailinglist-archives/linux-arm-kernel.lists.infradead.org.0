Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCFC8941F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 23:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qaNudZvWBoit6HHn0/omjCipP+xSwHkiTv+dRefOIW4=; b=lGDYzJu5kPI5FRVsiiZmg2ETl
	wZ9bvitVqBJjdqpPcZuEaYnH30KUppb15RehUcvnNWHlaWEgBuoq0f0RVFENx0nYY57H1gwOrID0O
	HsmaXHledUAK4CALNXKbzCiNLWpzn/9G1bgDXcZ2++opAFh+SDoBZ6MHGAaAcaNwdxIx6VZgBIdz9
	1UuXFWCYsHGRcZNahOSHmKOCF6HZKh8EEXyy03t0F/ZZQl8kt6J4yI1slZoJj5CMsmWtXdjVl4Ks7
	+fWlBVKx8k5R1fKqZHd3rpOSMZh8kB7KNWJ8v7PlfPX3hdvv3cy/AlI/knLOL//ppOW+NCMvE8Fz7
	W75cS5Dkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwvAl-0006T5-Qm; Sun, 11 Aug 2019 21:14:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwvAe-0006Sl-To
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 21:14:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id u25so10057602wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 14:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PszWHvsLW/V6ZIB/afDy1WXCmSMBx8K80OqoFKRpWh8=;
 b=fG0PSTuiukHcjUI+CKoLX7LrppjKawyg62flNpJVoVJ2lP7lZog5dTPwS5OPLR1MVR
 3FT/iTW7ksED0tg9OZQOM2mpg7vGPo3/qP+uLF9XVIuPwokNkX0MvbHgDOz98rUnIWE8
 LpJSSfaxStjdJitospeus04UjuJFKB8yO9OtPc4oLPLhb7T7WTuzQLHyiMATekCdiscL
 T+sURDuZAlMXOj7aHLeYQB1ZFUBsFClhxb6lrDpJf+7hl6LITkpN1otjp5NErC9kpaqP
 asTQAxmlwm/HYJMQaaDFCbN8nZayFZtPUMBEjh2Qh+j/3kWglrmD6qB410Fzrkoo6RFk
 gGtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PszWHvsLW/V6ZIB/afDy1WXCmSMBx8K80OqoFKRpWh8=;
 b=SYTE+Hx+5J8zXSWxtkaC0Np6ULxF+3qPHAKviwpYlV1Im13RLoosxQPNq/mhK42xIs
 6gJuRDyfqFMNZwYrpO2FuYsjrAfIL2tvmPljuRZFQwK0UaCkFAZfOE3FBcXbpxehdPKO
 OZ6FSRQ9NGYaEraM26a7W3TlK3F5+9IgnUW3sazMv6Q8W9AESjyGDQNjRRWGR5Oed8Gz
 PWmJYQMtIbYt6iV0AbtzGvvIxfaX+2WeLZaJVScenA/S3WEertkz5kHzaBSAKG3qBg1C
 cfp0RY5q+1WbLIm/F/NBJrWiZkiaGHWVczBW3Mf478b0dPHRG5fck8qRoPoFIWv4zPWe
 Xngw==
X-Gm-Message-State: APjAAAWejgIVZOnVxtV56MKo62qPfiAd/Y4Bk+V9KibdoL1fb1rbUGl4
 k7OuFLZz9y/OcLozPhm1dO0=
X-Google-Smtp-Source: APXvYqzH7S9vOiayMX06yEUTN1laxhsJ3ePYWknAWl8ojDlgYEwAhy1f7wQcZAvlXBJybcSJoh9W9Q==
X-Received: by 2002:a1c:a6c8:: with SMTP id p191mr23065963wme.99.1565558071411; 
 Sun, 11 Aug 2019 14:14:31 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:1f1:d0f0::4e2b:d7ca?
 ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id c15sm46855416wrb.80.2019.08.11.14.14.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 14:14:30 -0700 (PDT)
Subject: Re: [PATCH v5 00/18] add thermal driver for h6
To: Yangtao Li <tiny.windzz@gmail.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, maxime.ripard@bootlin.com, wens@csie.org,
 mchehab+samsung@kernel.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 Jonathan.Cameron@huawei.com, nicolas.ferre@microchip.com
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Message-ID: <f479c162-4eac-f320-3583-b9ddbef79b1a@gmail.com>
Date: Sun, 11 Aug 2019 23:14:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_141432_991647_3FEA63BA 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFuZ3RhbywKCk9uIDEwLzA4LzIwMTkgMDc6MjgsIFlhbmd0YW8gTGkgd3JvdGU6Cj4gVGhp
cyBwYXRjaHNldCBhZGQgc3VwcG9ydCBmb3IgQTY0LCBIMywgSDUsIEg2IGFuZCBSNDAgdGhlcm1h
bCBzZW5zb3IuCgpDb3VsZCB5b3UgYWRkIHRoZSBkZXZpY2UtdHJlZSBjb25maWd1cmF0aW9uIGlu
IHRoZSBzYW1lIHNlcmllcz8KVGhpcyB3aWxsIGFsbG93IHVzZXIgdG8gdGVzdCBpdC4KClRoYW5r
cywKQ2zDqW1lbnQKCj4gCj4gVGh4IHRvIEljZW5vd3kgYW5kIFZhc2lseS4KPiAKPiBCVFksIGRv
IGEgY2xlYW51cCBpbiB0aGVybWFsIG1ha2ZpbGUuCj4gCj4gSWNlbm93eSBaaGVuZyAoMyk6Cj4g
ICAgdGhlcm1hbDogc3VuOGk6IGFsbG93IHRvIHVzZSBjdXN0b20gdGVtcGVyYXR1cmUgY2FsY3Vs
YXRpb24gZnVuY3Rpb24KPiAgICB0aGVybWFsOiBzdW44aTogYWRkIHN1cHBvcnQgZm9yIEFsbHdp
bm5lciBINSB0aGVybWFsIHNlbnNvcgo+ICAgIHRoZXJtYWw6IHN1bjhpOiBhZGQgc3VwcG9ydCBm
b3IgQWxsd2lubmVyIFI0MCB0aGVybWFsIHNlbnNvcgo+IAo+IFZhc2lseSBLaG9ydXpoaWNrICgx
KToKPiAgICB0aGVybWFsOiBzdW44aTogYWRkIHRoZXJtYWwgZHJpdmVyIGZvciBBNjQKPiAKPiBZ
YW5ndGFvIExpICgxNCk6Cj4gICAgdGhlcm1hbDogc3VuOGk6IGFkZCB0aGVybWFsIGRyaXZlciBm
b3IgaDYKPiAgICBkdC1iaW5kaW5nczogdGhlcm1hbDogYWRkIGJpbmRpbmcgZG9jdW1lbnQgZm9y
IGg2IHRoZXJtYWwgY29udHJvbGxlcgo+ICAgIHRoZXJtYWw6IGZpeCBpbmRlbnRhdGlvbiBpbiBt
YWtlZmlsZQo+ICAgIHRoZXJtYWw6IHN1bjhpOiBnZXQgdGhzIHNlbnNvciBudW1iZXIgZnJvbSBk
ZXZpY2UgY29tcGF0aWJsZQo+ICAgIHRoZXJtYWw6IHN1bjhpOiByZXdvcmsgZm9yIHN1bjhpX3Ro
c19nZXRfdGVtcCgpCj4gICAgdGhlcm1hbDogc3VuOGk6IGdldCB0aHMgaW5pdCBmdW5jIGZyb20g
ZGV2aWNlIGNvbXBhdGlibGUKPiAgICB0aGVybWFsOiBzdW44aTogcmV3b3JrIGZvciB0aHMgaXJx
IGhhbmRsZXIgZnVuYwo+ICAgIHRoZXJtYWw6IHN1bjhpOiBzdXBwb3J0IG1vZCBjbG9ja3MKPiAg
ICB0aGVybWFsOiBzdW44aTogcmV3b3JrIGZvciB0aHMgY2FsaWJyYXRlIGZ1bmMKPiAgICBkdC1i
aW5kaW5nczogdGhlcm1hbDogYWRkIGJpbmRpbmcgZG9jdW1lbnQgZm9yIGgzIHRoZXJtYWwgY29u
dHJvbGxlcgo+ICAgIHRoZXJtYWw6IHN1bjhpOiBhZGQgdGhlcm1hbCBkcml2ZXIgZm9yIGgzCj4g
ICAgZHQtYmluZGluZ3M6IHRoZXJtYWw6IGFkZCBiaW5kaW5nIGRvY3VtZW50IGZvciBhNjQgdGhl
cm1hbCBjb250cm9sbGVyCj4gICAgZHQtYmluZGluZ3M6IHRoZXJtYWw6IGFkZCBiaW5kaW5nIGRv
Y3VtZW50IGZvciBoNSB0aGVybWFsIGNvbnRyb2xsZXIKPiAgICBkdC1iaW5kaW5nczogdGhlcm1h
bDogYWRkIGJpbmRpbmcgZG9jdW1lbnQgZm9yIHI0MCB0aGVybWFsIGNvbnRyb2xsZXIKPiAKPiAg
IC4uLi9iaW5kaW5ncy90aGVybWFsL3N1bjhpLXRoZXJtYWwueWFtbCAgICAgICB8IDE1NyArKysr
Kwo+ICAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA3
ICsKPiAgIGRyaXZlcnMvdGhlcm1hbC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8ICAx
NCArCj4gICBkcml2ZXJzL3RoZXJtYWwvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAg
IDkgKy0KPiAgIGRyaXZlcnMvdGhlcm1hbC9zdW44aV90aGVybWFsLmMgICAgICAgICAgICAgICB8
IDU5NiArKysrKysrKysrKysrKysrKysKPiAgIDUgZmlsZXMgY2hhbmdlZCwgNzc5IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvc3VuOGktdGhlcm1hbC55YW1sCj4gICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYwo+IC0tLQo+IHY1
Ogo+IC1hZGQgbW9yZSBzdXBwb3J0Cj4gLXNvbWUgdHJpdmFsIGZpeAo+IC0tLQo+IDIuMTcuMQo+
IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
