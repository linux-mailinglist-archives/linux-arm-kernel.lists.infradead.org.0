Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C9A160F8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:07:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GTWEOLC7jV2rBGUtltyru4oF5cscGSppflr/BWk6Sk=; b=MHL15EtxxcG8jV
	wmP4eBlLS30GmntDLU8c0dRymXJFQVq8Nw2GWzNIcF8Hojg1cXMVciPFVy4RKejrmHS+Lh03UD48Y
	Che2qOrQTxfA3ZIPBtsW/6+BROxOrxQx0DmzsVstHD4TnaUEMk8BIx0vtr7Qy7VA1JwShRGQqfUYi
	DH2mkykHpprWcDleCt/rbQogCjIJxUtFmosq8EN1ZZLe+trwictHBKzG7He5k7VfSdrtY3hFksvVc
	Jnq6BykvS5b6hK+/E4TJ4P90zvvTcg9WFoPJ3Exnw/Bz6rZftwls1bYyZcbWCJa8lW4/NEwzeuTHW
	LPSkv8b/556vC1gtLAfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dJQ-0007mE-F3; Mon, 17 Feb 2020 10:07:36 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dJE-0007jI-7C
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 10:07:26 +0000
Received: by mail-qt1-x841.google.com with SMTP id k7so11600334qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 02:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QKmvUuTt70pSAatHZ0jteOvjXuuDVvr+bCMj5+FFq08=;
 b=vCFFrRZrjoPXbs1+l6naVB0eUJ3yxVHXvgsyCrb5LjhS2ONKBUaYUtYVw8ooD3MpVN
 rXDdKtQu97wRmL+FqAuQ7abYMjL9ccTqfVst4GoDIVCLzyEgIowJpIQIpOm8kGoeWN19
 0sqaDpLR2KWxdmYkc+d0qvaarFa+9Y2mjq2kaOi/a2ysWjbnV/G0/acHVaeS3PrkED8Y
 p+6l4U2D2xkPj0Zv/wY+ZaJfYPvDNR/+Z/mt8cz+c+K+ueUQY9WA1KfqUPdBBQ+TCEaV
 CQ6Au2FpqwJYghlMkX11cuJgyBb8zSchrJE+gzsroZtPXEGUB7i8rW7QW1Ekz4/5whZ/
 5bOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QKmvUuTt70pSAatHZ0jteOvjXuuDVvr+bCMj5+FFq08=;
 b=Zun8lSLDToTnq0VztGGTRFj1BhU5PD+tbf5YlEPeqhQHWyXliuHx1waQsuZs+6JUIj
 dhFs2Z0KqUmc3qoLbMBhU4gh7kpEbEAsya82E5wMgi/sANFik8P+W6NwbzBpW0A55O4O
 qp/uG4XWITsJLKhSDCayjvQ044wTWZpNiJbOVHu9+NEaMt168UErpgM4XFdKoH9RBXlS
 o8SWB5I+eETYT2EgdYLTk6r8fX+BsTrM29T4PLYzyfJcexJnEu4RH/mu7Oe8onrEjTAu
 PupDzIMNpvIA8fEBPT9vBDmnFiELsK0tOeTLzGTLoWNFHRGhSoYKsbU9N5QTtOGXBpaG
 ZHwA==
X-Gm-Message-State: APjAAAVkJOOxVBps+z+2Jz3mhlVEZYf8cJKoNDcyHq1szRK9T+AITiEz
 r0KSWJAZJFFJO/Z7Pb2QgBgpW6lPEvpHx63G5sDPOw==
X-Google-Smtp-Source: APXvYqwVP2B36bbYFlQML/AXp94nphTIrkBxle/EKeNaBgmECufJ48t3oBIbJyL9Vm9rR/3FxaY+WDfBPXcQXWiWeHg=
X-Received: by 2002:ac8:44d1:: with SMTP id b17mr5644819qto.208.1581934043023; 
 Mon, 17 Feb 2020 02:07:23 -0800 (PST)
MIME-Version: 1.0
References: <1581664537-14386-1-git-send-email-srinivas.neeli@xilinx.com>
 <1581664537-14386-5-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1581664537-14386-5-git-send-email-srinivas.neeli@xilinx.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 17 Feb 2020 11:07:12 +0100
Message-ID: <CAMpxmJVLh6uq=0PKdHZ1CrmfCTuJen3UyVeNMqmCHv8bFAYARw@mail.gmail.com>
Subject: Re: [PATCH V2 4/7] gpio: zynq: Add Versal support
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_020724_265811_887B2CC3 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, shubhrajyoti.datta@xilinx.com,
 Michal Simek <michal.simek@xilinx.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, git@xilinx.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCAxNCBsdXQgMjAyMCBvIDA4OjE2IFNyaW5pdmFzIE5lZWxpIDxzcmluaXZhcy5uZWVsaUB4
aWxpbnguY29tPiBuYXBpc2HFgihhKToKPgo+IEZyb206IFNodWJocmFqeW90aSBEYXR0YSA8c2h1
YmhyYWp5b3RpLmRhdHRhQHhpbGlueC5jb20+Cj4KPiBBZGQgVmVyc2FsIHN1cHBvcnQgaW4gZ3Bp
by4KPiBPbmx5IGJhbmsgMCBhbmQgMyBhcmUgY29ubmVjdGVkIHRvIHRoZSBNdWx0aXBsZXhlZCBJ
bnB1dCBvdXRwdXQgcGlucy4KPiBCYW5rIDAgdG8gbWlvIGFuZCBiYW5rMyB0byBmYWJyaWMgTXVs
dGlwbGV4ZWQgaW5wdXQgb3V0cHV0IHBpbnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTaHViaHJhanlv
dGkgRGF0dGEgPHNodWJocmFqeW90aS5kYXR0YUB4aWxpbnguY29tPgo+IFNpZ25lZC1vZmYtYnk6
IE1pY2hhbCBTaW1layA8bWljaGFsLnNpbWVrQHhpbGlueC5jb20+Cj4gLS0tCj4gVmVyc2FsIGRl
dmljZXMgYXJlIHRoZSBpbmR1c3RyeSdzIGZpcnN0IGFkYXB0aXZlIGNvbXB1dGUgYWNjZWxlcmF0
aW9uIHBsYXRmb3Jtcy4KPiBodHRwczovL3d3dy54aWxpbnguY29tL3N1cHBvcnQvZG9jdW1lbnRh
dGlvbi9kYXRhX3NoZWV0cy9kczk1MC12ZXJzYWwtb3ZlcnZpZXcucGRmCj4KCk9rIHNvIHlvdSBh
ZGRlZCB0aGUgZGVzY3JpcHRpb24sIGJ1dCB3aHkgaXNuJ3QgaXQgcGFydCBvZiB0aGUgY29tbWl0
Cm1lc3NhZ2U/IFdlIHdhbnQgdG8gbWFrZSB0aGlzIGluZm9ybWF0aW9uIHBhcnQgb2YgdGhlIGdp
dCBoaXN0b3J5IC0Kb3RoZXJ3aXNlIGl0J2xsIGdldCBsb3N0IG9uIHRoZSBtYWlsaW5nIGxpc3Qu
CgpCYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
