Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8271E7852
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4NKTbp6YX/W5VesVYsUsMys+l9xSxzhGOEeaPyad9Q=; b=RobhwCjTUvyfA3
	Oc7RJJp5M1GOhieHsK3Zxtnjx9V02F8zEgz4877i0Skh1QZ5ApJXYYCUngXmfG07y1A4qtDbxEOfY
	Al9bd5puC13TPZGyFVMU7xFLJuZgZWNBPmdklBmMuZoBjQT4dWi3ADGaPyDT4hB27BDom5X/O4tu3
	4udLJ7BoqsHUiVlJEIyYrP7RkFmT2YDJBZg5ZVNglJaGEOt6XBtwheI6G/mSq6q0NRW5+yov+n2+k
	m7NMtQ4MLtIq4KdITvkHVPO6a7jqfGnooTcdrtIx+aanyg4lXx6F1/u4GU5ZQCQmqo4/MQzfAy7TE
	ff5+H6FozeJoZZkGNlRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeaNB-0002Cz-1o; Fri, 29 May 2020 08:28:13 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeaMy-00029R-BG
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 08:28:01 +0000
Received: by mail-io1-xd43.google.com with SMTP id o5so1431206iow.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 01:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3d129KIQl0F/HD1hAf9TNqbvJlvdS5cc8KsVfjCHT5Q=;
 b=wmyW81JabzxHJmyCKMgZjhesXeaxlHAgtiSlQtfNNLqtFcCrytSXj05vrtsugNI+4e
 cfEaRb4P/p456XvH6fTzAvynFbm1j8iN/KG5+cIDq8dpjbfm1pMTjOf60KV8RWik3/de
 1eaGl0ZLxmBp0eYX6Oh3hGpLro16xeOKrrUwZLm/j4wIIVouEbL6btDd3cWH6rTNnWWM
 yItf/W3AGeYP32m8aYT1kn81XaPibh0YxX9TkvEfkjFoKK/hOH21th+HLU9QeZvS7qMP
 wxJZLuvTclR/UhJOiystbHeZen80bdCUIz+slilZhz2xIv7VNwGFp8WcxCZcr7rDbe87
 TR6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3d129KIQl0F/HD1hAf9TNqbvJlvdS5cc8KsVfjCHT5Q=;
 b=IyyYHQsWfDPUeOtZh6GszXIckD9qNDIECdA1zWqFr1HJZioRS2soS9or84P1js7UzM
 M2bExjnO8+ICccyP+PImjX4c8R0joi2yOr8gz4T02vXv6C4dEZch7XLDFuCHEC6FkECB
 c/6kDIbkZD3j9mV3li+QYmp3NMJGJhxRy5c809mdDbFbS5Hc3Nq/Lf2AXfkRTK3tDvpq
 72ADRHK7qtyB0DvezHivVnP+zYwSu9fnxJMN0mnVdc/ANsBfrg3T0bbT1WeP4KLfs2DO
 +9PhxrUjE3FZv8ZWETH9YEPcPWsXrddYdhIwoa7G2g2zt6OsgScLOE0nhScNCOLmAsQy
 b20A==
X-Gm-Message-State: AOAM530spOF4OYFVV5/s3Y9l6Shyo4e6QYB/tAidffm5f56qga+rh6KM
 zXwcpi1x5+olJgiq2+OAQJGXTw8tEQXVc0Qx/9iocg==
X-Google-Smtp-Source: ABdhPJwA8vRDCN9N0HPnWhWtdnh8yznfwlfh5vLhi00vaN8ZbQ3tavDm+I4SrAQgg7Tnm8hKYE5T5eYY2+qznSroVnY=
X-Received: by 2002:a5d:9e55:: with SMTP id i21mr5656308ioi.130.1590740878066; 
 Fri, 29 May 2020 01:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200529082648.19677-1-brgl@bgdev.pl>
In-Reply-To: <20200529082648.19677-1-brgl@bgdev.pl>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 29 May 2020 10:27:47 +0200
Message-ID: <CAMRc=Md+KMpa-6f2rpd=fbR-xmCzaR3QypAk3FvMHpeyNzUX=g@mail.gmail.com>
Subject: Re: [PATCH] net: ethernet: mtk-star-emac: remove unused variable
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>, 
 Mark Lee <Mark-MC.Lee@mediatek.com>, "David S . Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_012800_386555_2060C2ED 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kbuild test robot <lkp@intel.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCAyOSBtYWogMjAyMCBvIDEwOjI2IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYu
cGw+IG5hcGlzYcWCKGEpOgo+Cj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3
c2tpQGJheWxpYnJlLmNvbT4KPgo+IFRoZSBkZXNjIHBvaW50ZXIgaXMgc2V0IGJ1dCBub3QgdXNl
ZC4gUmVtb3ZlIGl0Lgo+Cj4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50
ZWwuY29tPgo+IEZpeGVzOiA4YzdiZDVhNDU0ZmYgKCJuZXQ6IGV0aGVybmV0OiBtdGstc3Rhci1l
bWFjOiBuZXcgZHJpdmVyIikKPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
Z29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9t
ZWRpYXRlay9tdGtfc3Rhcl9lbWFjLmMgfCAzIC0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9t
dGtfc3Rhcl9lbWFjLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfc3Rhcl9l
bWFjLmMKPiBpbmRleCA4NTk2Y2EwZTYwZWIuLjdkZjM1ODcyYzEwNyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfc3Rhcl9lbWFjLmMKPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfc3Rhcl9lbWFjLmMKPiBAQCAtNzQ2LDE1ICs3
NDYsMTIgQEAgbXRrX3N0YXJfcmluZ19mcmVlX3NrYnMoc3RydWN0IG10a19zdGFyX3ByaXYgKnBy
aXYsIHN0cnVjdCBtdGtfc3Rhcl9yaW5nICpyaW5nLAo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgbXRrX3N0YXJfcmluZ19kZXNjX2RhdGEgKikpCj4g
IHsKPiAgICAgICAgIHN0cnVjdCBtdGtfc3Rhcl9yaW5nX2Rlc2NfZGF0YSBkZXNjX2RhdGE7Cj4g
LSAgICAgICBzdHJ1Y3QgbXRrX3N0YXJfcmluZ19kZXNjICpkZXNjOwo+ICAgICAgICAgaW50IGk7
Cj4KPiAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBNVEtfU1RBUl9SSU5HX05VTV9ERVNDUzsgaSsr
KSB7Cj4gICAgICAgICAgICAgICAgIGlmICghcmluZy0+ZG1hX2FkZHJzW2ldKQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+Cj4gLSAgICAgICAgICAgICAgIGRlc2MgPSAmcmlu
Zy0+ZGVzY3NbaV07Cj4gLQo+ICAgICAgICAgICAgICAgICBkZXNjX2RhdGEuZG1hX2FkZHIgPSBy
aW5nLT5kbWFfYWRkcnNbaV07Cj4gICAgICAgICAgICAgICAgIGRlc2NfZGF0YS5za2IgPSByaW5n
LT5za2JzW2ldOwo+Cj4gLS0KPiAyLjI2LjEKPgoKQ3IqcCBJIGZvcmdvdCB0byB0YWcgaXQgZm9y
IG5ldC1uZXh0LiBEYXZpZCBsZXQgbWUga25vdyBpZiB5b3Ugd2FudCBtZQp0byByZXNlbmQgaXQu
CgpCYXJ0b3N6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
