Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB5912E979
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDjqQnHk5Ts4KqoF5g0ROko+vR08JxL+EQYVa3rXkqg=; b=hkFAk3dPkHa9hk
	4Shutuwok4QXbw13qE9JHAf23i9MqV9K6TRIpSWVkdMo5gWGEVxWUmPnExdkaTN9Jn+myIrZgJVsg
	11TayfAtSXnWX0c8Xjlc9JLeXlOpicH9l1m63ljeRpRd0k1Ral2eKXQSwCrV/rZIOHKwQ0RlqlcUr
	HoyiU78gisk6BeHQuDtZi0GrCTVDb/Lkj80lsz8vCeP/a/6ao3LCaxOhq1Ni+5MiNjYUwTLXHQSWX
	MhNwvp/dM8TOXWe3LcSsMbBGOAGTgLptQoGOv91v8ew3YcCgOUsd3O5G1MIDYzwVt4poPOw89avU2
	ebaBpF/dUUFuID7aQlgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4SZ-00071G-6N; Thu, 02 Jan 2020 17:40:35 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4SS-00070O-Ff
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:40:30 +0000
Received: by mail-qt1-x842.google.com with SMTP id e5so35157820qtm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 09:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+sRNYThXV/qw+oqY2hzFYFQkSAluAiDf3LujstPJXpk=;
 b=Z+Tkx29qHd99z3LbNVNdDV3VtbSq4poPWwpGVSq/8bOwWWJru2Np+4/MO3Eqi0M+/n
 XwsWUu4GiugfaKjmGWy5dcgYknIPmgQ8HSg+BQMFx1AKnQQ98ufVB32z11XFH3JmK67+
 VmTtMu9erNzklKo5sGUNJ2CSRTaec8GjM3gpJuyyYkyESfBBsjtB4iQyHIduJuCnZoDF
 GHKxnjVyXJ8x6LKaFD3ZIn6h9YR0Sj58IUPVoAknxXgWCNKVAnJaoyCwWYMevzDAPSmo
 8XhVUG04wcBsyryZCGDlnYuzweHgr82zQq9b9VbPxYxJOcsCjIX4PfJUpX6QNTqdSz95
 1+Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+sRNYThXV/qw+oqY2hzFYFQkSAluAiDf3LujstPJXpk=;
 b=tKU4NdmDpe12HTmcdQ8FtGIc5WQYR4RKeI5pQCcFH1YmqLqEqkmhUVf1M/BD23nOZi
 beI5G/FUBtgfhvrilumI/Hg5JamoNO/jMC6GQpL/z2qyCedzVAL91FJ7QY/WMLaeF8MZ
 KHWM/iH9hnMjo/4+SvahbR1VHUBIpGx/nFSofunL9qgWY+NHznXmx5AacvD2JtKRLDea
 2P9arHdrlhX6I7zkxakJjOLyaMqwO9C4Hi36fpRTvdCUMsNKxhDagLlQUO846PU7qZIQ
 B8cm1+uDTecu/DvCVM06NktbO4YicJIfFX83UNr8cn0Y2obc8ACR4lua7oJxrrFGCnqF
 mFJQ==
X-Gm-Message-State: APjAAAWT2pEuAAhEsUUYefJohzGD89OqAdolMkToKAJoeWjaRwMTC4jn
 fuAqn2zVAOROfl328MSa7Ic00WGSao2KuJx/Y4eaUQ==
X-Google-Smtp-Source: APXvYqyNeaD4tk9QDs9WLgwv0+DhmaV3KGt2yAfjSv5ZOYVds8cpBjowJz2+eu1ZE3QJmZsgZSV/7gY4BE6Kfe4v6o0=
X-Received: by 2002:ac8:704:: with SMTP id g4mr60782643qth.197.1577986823008; 
 Thu, 02 Jan 2020 09:40:23 -0800 (PST)
MIME-Version: 1.0
References: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
 <1577362338-28744-3-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1577362338-28744-3-git-send-email-srinivas.neeli@xilinx.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 2 Jan 2020 18:40:12 +0100
Message-ID: <CAMpxmJUWW6Ku7edG1WWz67sBiAj7Fxf_C=XWA3eNO=B75X7oOw@mail.gmail.com>
Subject: Re: [PATCH 2/8] gpio: zynq: protect direction in/out with a spinlock
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_094028_665506_63F8FD58 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>, shubhrajyoti.datta@xilinx.com,
 Michal Simek <michal.simek@xilinx.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, git@xilinx.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMjYgZ3J1IDIwMTkgbyAxMzoxMiBTcmluaXZhcyBOZWVsaSA8c3Jpbml2YXMubmVlbGlA
eGlsaW54LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBGcm9tOiBHbGVubiBMYW5nZWRvY2sgPEdsZW5u
LkxhbmdlZG9ja0BiYXJjby5jb20+Cj4KPiBGaXggcmFjZSBjb25kaXRpb24gd2hlbiBjaGFuZ2lu
ZyB0aGUgZGlyZWN0aW9uIChpbi9vdXQpIG9mIHRoZSBHUElPIHBpbi4KPiBUaGUgcmVhZC1tb2Rp
Znktd3JpdGUgc2VxdWVuY2UgKGFzIGNvZGVkIGluIHRoZSBkcml2ZXIpIGlzbid0IGF0b21pYyBh
bmQKPiByZXF1aXJlcyBzeW5jaHJvbml6YXRpb24gKHNwaW5sb2NrKS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEdsZW5uIExhbmdlZG9jayA8R2xlbm4uTGFuZ2Vkb2NrQGJhcmNvLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWwgU2ltZWsgPG1pY2hhbC5zaW1la0B4aWxpbnguY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IFNyaW5pdmFzIE5lZWxpIDxzcmluaXZhcy5uZWVsaUB4aWxpbnguY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwaW8vZ3Bpby16eW5xLmMgfCAxMSArKysrKysrKysrKwo+ICAxIGZpbGUgY2hh
bmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlv
LXp5bnEuYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXp5bnEuYwo+IGluZGV4IDA1YmExNmZmZmRhZC4u
OWM4YjhhMzk3YTI2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3Bpby9ncGlvLXp5bnEuYwo+ICsr
KyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXp5bnEuYwo+IEBAIC0xMCw2ICsxMCw3IEBACj4gICNpbmNs
dWRlIDxsaW51eC9ncGlvL2RyaXZlci5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW5pdC5oPgo+ICAj
aW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zcGlubG9jay5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+
ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gQEAgLTExNiw2ICsxMTcsNyBA
QCBzdHJ1Y3QgZ3Bpb19yZWdzIHsKPiAgICogQGlycTogICAgICAgaW50ZXJydXB0IGZvciB0aGUg
R1BJTyBkZXZpY2UKPiAgICogQHBfZGF0YTogICAgcG9pbnRlciB0byBwbGF0Zm9ybSBkYXRhCj4g
ICAqIEBjb250ZXh0OiAgIGNvbnRleHQgcmVnaXN0ZXJzCj4gKyAqIEBkaXJsb2NrOiAgIGxvY2sg
dXNlZCBmb3IgZGlyZWN0aW9uIGluL291dCBzeW5jaHJvbml6YXRpb24KPiAgICovCj4gIHN0cnVj
dCB6eW5xX2dwaW8gewo+ICAgICAgICAgc3RydWN0IGdwaW9fY2hpcCBjaGlwOwo+IEBAIC0xMjQs
NiArMTI2LDcgQEAgc3RydWN0IHp5bnFfZ3BpbyB7Cj4gICAgICAgICBpbnQgaXJxOwo+ICAgICAg
ICAgY29uc3Qgc3RydWN0IHp5bnFfcGxhdGZvcm1fZGF0YSAqcF9kYXRhOwo+ICAgICAgICAgc3Ry
dWN0IGdwaW9fcmVncyBjb250ZXh0Owo+ICsgICAgICAgc3BpbmxvY2tfdCBkaXJsb2NrOyAvKmxv
Y2sgdXNlZCBmb3IgZGlyZWN0aW9uIGluL291dCBzeW5jaHJvbml6YXRpb24gKi8KCk1heWJlIGp1
c3QgY2FsbCBpdCAnbG9jaycgaW4gY2FzZSBpdCB0dXJucyBvdXQgb3RoZXIgb3BlcmF0aW9ucyBu
ZWVkCmxvY2tpbmcgYXMgd2VsbD8KCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
