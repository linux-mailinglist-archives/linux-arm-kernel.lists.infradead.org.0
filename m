Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085B5BD3B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 22:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMRQwfH0r6wFDqg8mud3Ze6u3Fd42OBO7eWYSLzIdZI=; b=qOR/T/UV0KW5r/
	dwhVtIiUZzUCbWEUQg+LCzT51x+d1St1bY/XGpwtU7ddTuz1gbxMceX3KBYQLnMwSzYFu0o4U4UmP
	oWWkeHa8vwVNIdzcObnciymPCKbRqaRgP8GjLdk1x6URbQtz/TVwqZrpzQDU5pC/iKOPvKhRNZBgL
	Jk+ikl5PDXkorO2jW9iVV/qFHZJiQ5UVG2/0faGJZuQ7PMoGt3Tu61ZZHkA5+vkOrPCxcbgPzN2PF
	rtfZBMPto9icqhFlZDVbLQsdIKfjK8aj0NyS6T5uhqVzvaAWyqKWiBLaYUzyNqFsVUc0Xw/jkP6jD
	BSeziyVuDMq5TvCAhnWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCraV-0000cc-UG; Tue, 24 Sep 2019 20:39:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCraH-0000bn-DK
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 20:38:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id t10so1457506plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 13:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=UZKL+542wWKMtqmPB6ZvBJSdUhAfyCh5/zN16bhGakE=;
 b=S0wL3sdM8d7Q+5AXyTcUlMHv1TTpJejEloFuec4WRpAkLmKcvHmgitE1IokWm23HwW
 r+9a9GSziwe0GDztbRTKWzAGkdkec6tLYLINYCNpRX4PHpC0cddz5w3l5+XtquS5NnVf
 fqZP5D1nV0ZUJ3VrRp4xuEQCDLBuOei31MZ46orV7epEfNhvEqwIQRRhQwUBcicvJemG
 GtcJW6qW0BukiLlU7p2kqS9cW28NB0Nc31/537h0CJ2uZgTBhbTcC1u/fcAjbn2qQr6R
 /IrlFVVrpBoMcVo6YOVTGQpYmQozhHHkxJOaefCm35jiP1t3VYNpqYcs7dvWrgZLHXrm
 Fn3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=UZKL+542wWKMtqmPB6ZvBJSdUhAfyCh5/zN16bhGakE=;
 b=JIqULP/cAOQwXEtlmV+06cJs68FZRwLAryJimPox54NDkCzQi6oMh5IQbrQh3qkKz0
 MP64GpSeQdWLo0FwLc8nAFR7mqHLQDo/6GabNfNR+DtyhdOroO3RCROfNX+5pDNsAMyL
 GyAvB1bStreNjlY+TxmW+LvAiaNxlXbFawBvHBJo0Xzl3YD62Y/yUkqQH+/oHjxbh2f9
 GeNnxv1fZcWtAQUmSU0BoU3ouPXQ9zbGXWUlEWdsqm8oe76flwsRe0d1kJgIgehRX4GS
 LBLidqMPnOugWVgRuKPKCX1T0MjGzF5pcn4ItdMHyq8Wq1Ao73MKCVkLEXOSqF9Voft5
 Y30g==
X-Gm-Message-State: APjAAAUQ3Q9r+FewP5WgWXUTKSuRsuxWq2GehJUAiFbZJ63mzwlxCN+s
 duoYYMNvrUjP/kTDV78+njIGvohOTrABLg==
X-Google-Smtp-Source: APXvYqys8CWbFt5YPo4VOMno8TMWKcB9zMouJBRLLd0jC5kTZUKLp1yNC4y6Yy2B+9rsAj0o0qbsHA==
X-Received: by 2002:a17:902:20b:: with SMTP id 11mr5302676plc.62.1569357531963; 
 Tue, 24 Sep 2019 13:38:51 -0700 (PDT)
Received: from dell ([12.157.10.114])
 by smtp.gmail.com with ESMTPSA id p88sm865032pjp.22.2019.09.24.13.38.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 24 Sep 2019 13:38:51 -0700 (PDT)
Date: Tue, 24 Sep 2019 21:38:48 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20190924203848.GC4469@dell>
References: <1568801744-21380-1-git-send-email-gene.chen.richtek@gmail.com>
 <20190918105121.GB5016@dell>
 <CAE+NS37XG+kfbj6yJrL5A-d2O_aiRU90yV5TUk3Kfa0Rv7dWmw@mail.gmail.com>
 <20190919071828.GC5016@dell>
 <CAE+NS342Kn6OEz4D9Y0yfXStnW6KQ6N2yuQtgN2q2bXafofShg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE+NS342Kn6OEz4D9Y0yfXStnW6KQ6N2yuQtgN2q2bXafofShg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_133853_591007_620C2643 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyNCBTZXAgMjAxOSwgR2VuZSBDaGVuIHdyb3RlOgoKPiAyMDE5LTA5LTE5IDE1OjE4
IEdNVCswODowMCwgTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz46Cj4gPiBPbiBUaHUs
IDE5IFNlcCAyMDE5LCBHZW5lIENoZW4gd3JvdGU6Cj4gPgo+ID4+IExlZSBKb25lcyA8bGVlLmpv
bmVzQGxpbmFyby5vcmc+IOaWvCAyMDE55bm0OeaciDE45pelIOmAseS4iSDkuIvljYg2OjUx5a+r
6YGT77yaCj4gPj4gPgo+ID4+ID4gT24gV2VkLCAxOCBTZXAgMjAxOSwgR2VuZSBDaGVuIHdyb3Rl
Ogo+ID4+ID4KPiA+PiA+ID4gRnJvbTogR2VuZSBDaGVuIDxnZW5lX2NoZW5AcmljaHRlay5jb20+
Cj4gPj4gPiA+Cj4gPj4gPiA+IEFkZCBtZmQgZHJpdmVyIGZvciBtdDYzNjAgcG1pYyBjaGlwIGlu
Y2x1ZGUKPiA+PiA+ID4gQmF0dGVyeSBDaGFyZ2VyL1VTQl9QRC9GbGFzaCBMRUQvUkdCIExFRC9M
RE8vQnVjawo+ID4+ID4gPgo+ID4+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHZW5lIENoZW4gPGdlbmVf
Y2hlbkByaWNodGVrLmNvbQo+ID4+ID4gPiAtLS0KPiA+PiA+Cj4gPj4gPiBUaGlzIGxvb2tzIGRp
ZmZlcmVudCBmcm9tIHRoZSBvbmUgeW91IHNlbnQgYmVmb3JlLCBidXQgSSBkb24ndCBzZWUgYQo+
ID4+ID4gdmVyc2lvbiBidW1wIG9yIGFueSBjaGFuZ2Vsb2cgaW4gdGhpcyBzcGFjZS4gIFBsZWFz
ZSByZS1zdWJtaXQgd2l0aAo+ID4+ID4gdGhlIGRpZmZlcmVuY2VzIG5vdGVkLgo+ID4+ID4KPiA+
Pgo+ID4+IHRoZSBjaGFuZ2UgaXMKPiA+PiAxLiBhZGQgbWlzc2luZyBpbmNsdWRlIGZpbGUKPiA+
PiAyLiBtb2RpZnkgY29tbWl0IG1lc3NhZ2UKPiA+Pgo+ID4+IHRoaXMgcGF0Y2ggaXMgcmVnYXJk
ZWQgYXMgdmVyc2lvbiAxCj4gPgo+ID4gSXQncyBkaWZmZXJlbnQgdG8gdGhlIGZpcnN0IG9uZSB5
b3Ugc2VudCB0byB0aGUgbGlzdCwgc28gaXQgbmVlZHMgYQo+ID4gdmVyc2lvbiBidW1wIGFuZCBh
IGNoYW5nZSBsb2cuICBUaGVyZSBhbHNvIGFwcGVhcnMgdG8gc3RpbGwgYmUgaXNzdWVzCj4gPiB3
aXRoIGl0LCBpZiB0aGUgYXV0by1idWlsZGVycyBhcmUgdG8gYmUgYmVsaWV2ZWQuCj4gPgo+ID4g
RG8gZW5zdXJlIHlvdSB0aG9yb3VnaGx5IHRlc3QgeW91ciBwYXRjaGVzIGJlZm9yZSBzZW5kaW5n
IHVwc3RyZWFtLgo+ID4KPiA+IFBsZWFzZSBmaXggdGhlIGlzc3VlcyBhbmQgcmVzdWJtaXQgeW91
ciB2MyB3aXRoIGEgbmljZSBjaGFuZ2Vsb2cuCj4gPgo+IAo+IHRoYW5rIHlvdSBmb3Igc3VnZ2Vz
dGlvbgo+IG1heSBpIGFzayBob3cgdG8gZGlzYWJsZSBrYnVpbGQgdGVzdCByZWJvb3QgZm9yIHMz
OTAveDg2XzY0L2lhNjQ/Cj4gd2Ugd2FudCBzdXBwb3J0IG9ubHkgY3Jvc3MgY29tcGlsZXIgPSAg
YWFyY2g2NC1saW51eC1nbnUtCj4gYW5kIHdlIGhhdmUgdGVzdCBidWlsZCBwYXNzIHdpdGggb3Vy
IHBhdGNoCgpZb3UgY2FuJ3QgYW5kIHdlIHdvdWxkbid0IHdhbnQgdG8uCgpJZiB0aGlzIGRyaXZl
ciBzaG91bGQgb25seSBiZSBidWlsdC90ZXN0ZWQgZm9yIEFBcmNoNjQsIHlvdSBuZWVkIHRvCmVu
c3VyZSB0aGUgS2NvbmZpZyByZXByZXNlbnRzIHRoYXQuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzm
lq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0
dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
