Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01861B632F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 20:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5y1g1m/6PMbAbKwT4BT1JHmkiMXJmVqbAdXoNYn5XuI=; b=Lp+fU5YeUsM5E0
	7rajns0GGPbXyvLWxldd1CMokJxhiNhKd22T3t0UGFCLoSFVgjFb353QGIYVl6VtB0W8VqnjEeTU+
	2X8RAsUF4qlkdWfyEP7gvMk+yp2Gklo3sFQVUUzIfaoxPmRJQsnZoMUq4qUOB0/4JDwrJdpVAa5Bg
	smiIZqvVCcMn34Tc3oVaBtAkcRRJl5/a6Nlz3Z3siC7My9BgeU4HmKHGEz+3RHN32NkuYBv6DhcfT
	qAdS+JKRKvB/XFbXiiRbvCAYZzfUeAvHG/BTCAl9wiBAzgATnuZ25GvnB41K047nY44kpN8O66KIe
	BoWIYh9vaHKs3z9xqdZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgSX-0005Cq-Hh; Thu, 23 Apr 2020 18:20:25 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRgS3-00058A-KP; Thu, 23 Apr 2020 18:19:57 +0000
Received: by mail-qt1-x843.google.com with SMTP id 71so5655093qtc.12;
 Thu, 23 Apr 2020 11:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0xwMgS5hnqkfTVij6WET/wLkgPqmJ55RCf68aR2rUhE=;
 b=lgGJK79TGuuUFMJYa506teektxNwr1qjM+9whr2cjCWbT7IWNet4nGp/xgGOzdZA2P
 bQw9gz0nUrdrACE+6xx9pwYLpp33a1b0myh02Z9CcSkdCLl/1hzuqwwRiacs69q1KkBg
 50L3r4U/ZmDqj8I5reR0QSnkGelCa4MYJ/DyeIRA1L4WTQ8DNuVWlvx/wAgcv4g13lmu
 z8YfjautkCSjxyuqoJxLG8icqgyBanQdck3PownZgHs4RYX20KQaaCLKU76pZGi6h/9C
 JY5Zwp8BJ0y52OayYGfcZWppnCjZ+SbLCxVcME4zmWWgHVTGAwxsYHjgya6jf4eHB3Xw
 SnWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0xwMgS5hnqkfTVij6WET/wLkgPqmJ55RCf68aR2rUhE=;
 b=if42Br7TRGddxrMlvj9AJGNBNHoYfTv2vE+Rg++TQ7msfdTorlJwts3LjYRgVb8Dy6
 QyjlrbG1biYAEVBnFb8bogmUlQu9EPFv6rzlifspZugLQKbgu7nWrLbJZj0UocsdrUvP
 2aWB3GwQW0qYk7aj55z3QB30gkppNhwUIW+JogmXOLo60rontbcekw8+EbhYor6JY8LH
 1QwPC2F2gzLnIieCGYMWoJh4z0x4mFMZW4SP/LotI1q2+nb1RCeQxNFa+q7Zd4w+jjyP
 qgDjkBVlxHPuoi0qCA9mzw2sAor1Hu6kaYgBNTXUpFR4spSMKl5c4jiEyMfc6wiLObt7
 g8og==
X-Gm-Message-State: AGi0Pua0TBix/FZxASDpHz2MIQLsZBvUvelbSCMw+SGvuGlki0aFLSmI
 DVDBMcdxR5bdZV+6UEFSoenDDRBb4fN0rG2LgMk=
X-Google-Smtp-Source: APiQypIGWeJwrFimQzMgUQG+qTPqYl20upz8Dot3jjNmeXFU7YbX5dBUQnwsRfCDphRmUJJMAqf5lI9P8qYDF8Aiqt0=
X-Received: by 2002:ac8:7681:: with SMTP id g1mr5257448qtr.311.1587665993646; 
 Thu, 23 Apr 2020 11:19:53 -0700 (PDT)
MIME-Version: 1.0
References: <1584689540-5227-1-git-send-email-weiyi.lu@mediatek.com>
 <1584689540-5227-7-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1584689540-5227-7-git-send-email-weiyi.lu@mediatek.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Thu, 23 Apr 2020 20:19:41 +0200
Message-ID: <CAFqH_50KjArK4hCeO88jGoaHgybOOkwTXx2vemO6LdxFqHAeXw@mail.gmail.com>
Subject: Re: [PATCH v13 06/11] soc: mediatek: Add subsys clock control for bus
 protection
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_111955_676309_A7726250 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2VpeWkgTHUsCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCk1pc3NhdGdlIGRlIFdlaXlp
IEx1IDx3ZWl5aS5sdUBtZWRpYXRlay5jb20+IGRlbCBkaWEgZHYuLCAyMCBkZSBtYXLDpwoyMDIw
IGEgbGVzIDg6MzM6Cj4KPiBGb3IgdGhlIGJ1cyBwcm90ZWN0aW9uIG9wZXJhdGlvbnMsIHNvbWUg
c3Vic3lzIGNsb2NrcyBuZWVkIHRvIGJlIGVuYWJsZWQKPiBiZWZvcmUgcmVsZWFzaW5nIHRoZSBw
cm90ZWN0aW9uLCBhbmQgdmlzZSB2ZXJzYS4KCnR5cG8gcy92aXNlL3ZpY2UvCgo+IEJ1dCB0aG9z
ZSBzdWJzeXMgY2xvY2tzIGNvdWxkIG9ubHkgYmUgY29udHJvbGxlZCBvbmNlIGl0cyBjb3JyZXNw
b25kaW5nCj4gcG93ZXIgZG9tYWluIGlzIHR1cm5lZCBvbiBmaXJzdC4KPiBJbiB0aGlzIHBhdGNo
LCB3ZSBhZGQgdGhlIHN1YnN5cyBjbG9jayBjb250cm9sIGludG8gaXRzIHJlbGF2ZW50IHN0ZXBz
LgoKdHlwbyBzL3JlbGF2ZW50L3JlbGV2YW50LwoKPgo+IFNpZ25lZC1vZmYtYnk6IFdlaXlpIEx1
IDx3ZWl5aS5sdUBtZWRpYXRlay5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvc29jL21lZGlhdGVrL210
ay1zY3BzeXMuYyB8IDcxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNjkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstc2Nwc3lzLmMgYi9kcml2ZXJzL3Nv
Yy9tZWRpYXRlay9tdGstc2Nwc3lzLmMKPiBpbmRleCBhNGZiMGIyMy4uMmE5NDc4ZiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstc2Nwc3lzLmMKPiArKysgYi9kcml2ZXJz
L3NvYy9tZWRpYXRlay9tdGstc2Nwc3lzLmMKPiBAQCAtODAsNiArODAsNyBAQAo+ICAjZGVmaW5l
IFBXUl9TVEFUVVNfV0IgICAgICAgICAgICAgICAgICBCSVQoMjcpIC8qIE1UNzYyMiAqLwo+Cj4g
ICNkZWZpbmUgTUFYX0NMS1MgICAgICAgMwo+ICsjZGVmaW5lIE1BWF9TVUJTWVNfQ0xLUyAxMAo+
Cj4gIC8qKgo+ICAgKiBzdHJ1Y3Qgc2NwX2RvbWFpbl9kYXRhIC0gc2NwIGRvbWFpbiBkYXRhIGZv
ciBwb3dlciBvbi9vZmYgZmxvdwo+IEBAIC04OSw2ICs5MCw4IEBACj4gICAqIEBzcmFtX3Bkbl9i
aXRzOiBUaGUgbWFzayBmb3Igc3JhbSBwb3dlciBjb250cm9sIGJpdHMuCj4gICAqIEBzcmFtX3Bk
bl9hY2tfYml0czogVGhlIG1hc2sgZm9yIHNyYW0gcG93ZXIgY29udHJvbCBhY2tlZCBiaXRzLgo+
ICAgKiBAYmFzaWNfY2xrX25hbWU6IFRoZSBiYXNpYyBjbG9ja3MgcmVxdWlyZWQgYnkgdGhpcyBw
b3dlciBkb21haW4uCj4gKyAqIEBzdWJzeXNfY2xrX3ByZWZpeDogVGhlIHByZWZpeCBuYW1lIG9m
IHRoZSBjbG9ja3MgbmVlZCB0byBiZSBlbmFibGVkCj4gKyAqICAgICAgICAgICAgICAgICAgICAg
YmVmb3JlIHJlbGVhc2luZyBidXMgcHJvdGVjdGlvbi4KPiAgICogQGNhcHM6IFRoZSBmbGFnIGZv
ciBhY3RpdmUgd2FrZS11cCBhY3Rpb24uCj4gICAqIEBicF90YWJsZTogVGhlIG1hc2sgdGFibGUg
Zm9yIG11bHRpcGxlIHN0ZXAgYnVzIHByb3RlY3Rpb24uCj4gICAqLwo+IEBAIC05OSw2ICsxMDIs
NyBAQCBzdHJ1Y3Qgc2NwX2RvbWFpbl9kYXRhIHsKPiAgICAgICAgIHUzMiBzcmFtX3Bkbl9iaXRz
Owo+ICAgICAgICAgdTMyIHNyYW1fcGRuX2Fja19iaXRzOwo+ICAgICAgICAgY29uc3QgY2hhciAq
YmFzaWNfY2xrX25hbWVbTUFYX0NMS1NdOwo+ICsgICAgICAgY29uc3QgY2hhciAqc3Vic3lzX2Ns
a19wcmVmaXg7Cj4gICAgICAgICB1OCBjYXBzOwo+ICAgICAgICAgc3RydWN0IGJ1c19wcm90IGJw
X3RhYmxlW01BWF9TVEVQU107Cj4gIH07Cj4gQEAgLTEwOSw2ICsxMTMsNyBAQCBzdHJ1Y3Qgc2Nw
X2RvbWFpbiB7Cj4gICAgICAgICBzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gZ2VucGQ7Cj4gICAg
ICAgICBzdHJ1Y3Qgc2NwICpzY3A7Cj4gICAgICAgICBzdHJ1Y3QgY2xrICpjbGtbTUFYX0NMS1Nd
Owo+ICsgICAgICAgc3RydWN0IGNsayAqc3Vic3lzX2Nsa1tNQVhfU1VCU1lTX0NMS1NdOwo+ICAg
ICAgICAgY29uc3Qgc3RydWN0IHNjcF9kb21haW5fZGF0YSAqZGF0YTsKPiAgICAgICAgIHN0cnVj
dCByZWd1bGF0b3IgKnN1cHBseTsKPiAgfTsKPiBAQCAtMzg0LDE2ICszODksMjIgQEAgc3RhdGlj
IGludCBzY3BzeXNfcG93ZXJfb24oc3RydWN0IGdlbmVyaWNfcG1fZG9tYWluICpnZW5wZCkKPiAg
ICAgICAgIHZhbCB8PSBQV1JfUlNUX0JfQklUOwo+ICAgICAgICAgd3JpdGVsKHZhbCwgY3RsX2Fk
ZHIpOwo+Cj4gLSAgICAgICByZXQgPSBzY3BzeXNfc3JhbV9lbmFibGUoc2NwZCwgY3RsX2FkZHIp
Owo+ICsgICAgICAgcmV0ID0gc2Nwc3lzX2Nsa19lbmFibGUoc2NwZC0+c3Vic3lzX2NsaywgTUFY
X1NVQlNZU19DTEtTKTsKPiAgICAgICAgIGlmIChyZXQgPCAwKQo+ICAgICAgICAgICAgICAgICBn
b3RvIGVycl9wd3JfYWNrOwo+Cj4gKyAgICAgICByZXQgPSBzY3BzeXNfc3JhbV9lbmFibGUoc2Nw
ZCwgY3RsX2FkZHIpOwo+ICsgICAgICAgaWYgKHJldCA8IDApCj4gKyAgICAgICAgICAgICAgIGdv
dG8gZXJyX3NyYW07Cj4gKwo+ICAgICAgICAgcmV0ID0gc2Nwc3lzX2J1c19wcm90ZWN0X2Rpc2Fi
bGUoc2NwZCk7Cj4gICAgICAgICBpZiAocmV0IDwgMCkKPiAtICAgICAgICAgICAgICAgZ290byBl
cnJfcHdyX2FjazsKPiArICAgICAgICAgICAgICAgZ290byBlcnJfc3JhbTsKPgo+ICAgICAgICAg
cmV0dXJuIDA7Cj4KPiArZXJyX3NyYW06Cj4gKyAgICAgICBzY3BzeXNfY2xrX2Rpc2FibGUoc2Nw
ZC0+c3Vic3lzX2NsaywgTUFYX1NVQlNZU19DTEtTKTsKPiAgZXJyX3B3cl9hY2s6Cj4gICAgICAg
ICBzY3BzeXNfY2xrX2Rpc2FibGUoc2NwZC0+Y2xrLCBNQVhfQ0xLUyk7Cj4gIGVycl9jbGs6Cj4g
QEAgLTQyMCw2ICs0MzEsOCBAQCBzdGF0aWMgaW50IHNjcHN5c19wb3dlcl9vZmYoc3RydWN0IGdl
bmVyaWNfcG1fZG9tYWluICpnZW5wZCkKPiAgICAgICAgIGlmIChyZXQgPCAwKQo+ICAgICAgICAg
ICAgICAgICBnb3RvIG91dDsKPgo+ICsgICAgICAgc2Nwc3lzX2Nsa19kaXNhYmxlKHNjcGQtPnN1
YnN5c19jbGssIE1BWF9TVUJTWVNfQ0xLUyk7Cj4gKwo+ICAgICAgICAgLyogc3Vic3lzIHBvd2Vy
IG9mZiAqLwo+ICAgICAgICAgdmFsID0gcmVhZGwoY3RsX2FkZHIpOwo+ICAgICAgICAgdmFsIHw9
IFBXUl9JU09fQklUOwo+IEBAIC00NTcsNiArNDcwLDQ4IEBAIHN0YXRpYyBpbnQgc2Nwc3lzX3Bv
d2VyX29mZihzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkKQo+ICAgICAgICAgcmV0dXJu
IHJldDsKPiAgfQo+Cj4gK3N0YXRpYyBpbnQgaW5pdF9zdWJzeXNfY2xrcyhzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2LAo+ICsgICAgICAgICAgICAgICBjb25zdCBjaGFyICpwcmVmaXgsIHN0
cnVjdCBjbGsgKipjbGspCj4gK3sKPiArICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9
IHBkZXYtPmRldi5vZl9ub2RlOwo+ICsgICAgICAgdTMyIHByZWZpeF9sZW4sIHN1Yl9jbGtfY250
ID0gMDsKPiArICAgICAgIHN0cnVjdCBwcm9wZXJ0eSAqcHJvcDsKPiArICAgICAgIGNvbnN0IGNo
YXIgKmNsa19uYW1lOwo+ICsKPiArICAgICAgIGlmICghbm9kZSkgewoKSXMgdGhpcyBwb3NzaWJs
ZT8gSSBzdXNwZWN0IHlvdSBjYW4gcmVtb3ZlIHRoaXMgY2hlY2suCgo+ICsgICAgICAgICAgICAg
ICBkZXZfZXJyKCZwZGV2LT5kZXYsICJDYW5ub3QgZmluZCBzY3BzeXMgbm9kZTogJWxkXG4iLAo+
ICsgICAgICAgICAgICAgICAgICAgICAgIFBUUl9FUlIobm9kZSkpOwo+ICsgICAgICAgICAgICAg
ICByZXR1cm4gUFRSX0VSUihub2RlKTsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBwcmVmaXhf
bGVuID0gc3RybGVuKHByZWZpeCk7Cj4gKwo+ICsgICAgICAgb2ZfcHJvcGVydHlfZm9yX2VhY2hf
c3RyaW5nKG5vZGUsICJjbG9jay1uYW1lcyIsIHByb3AsIGNsa19uYW1lKSB7Cj4gKyAgICAgICAg
ICAgICAgIGlmICghc3RybmNtcChjbGtfbmFtZSwgcHJlZml4LCBwcmVmaXhfbGVuKSAmJgo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKGNsa19uYW1lW3ByZWZpeF9sZW5dID09ICct
JykpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoc3ViX2Nsa19jbnQgPj0gTUFYX1NV
QlNZU19DTEtTKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZw
ZGV2LT5kZXYsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJzdWJz
eXMgY2xrIG91dCBvZiByYW5nZSAlZFxuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3ViX2Nsa19jbnQpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FSU5WQUw7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfQo+ICsKPiArICAg
ICAgICAgICAgICAgICAgICAgICBjbGtbc3ViX2Nsa19jbnRdID0gZGV2bV9jbGtfZ2V0KCZwZGV2
LT5kZXYsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y2xrX25hbWUpOwo+ICsKPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoSVNfRVJSKGNsa1tz
dWJfY2xrX2NudF0pKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJy
KCZwZGV2LT5kZXYsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJT
dWJzeXMgY2xrIGdldCBmYWlsICVsZFxuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgUFRSX0VSUihjbGtbc3ViX2Nsa19jbnRdKSk7CgpUaGlzIGRldl9lcnIgaXMg
cmVkdW5kYW50LCBkZXZtX2Nsa19nZXQgYWxyZWFkeSBwcmludHMgaXQgaWYgdGhlIGNsb2NrCmlz
IG5vdCBmb3VuZC4KCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRS
X0VSUihjbGtbc3ViX2Nsa19jbnRdKTsKPiArICAgICAgICAgICAgICAgICAgICAgICB9Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgc3ViX2Nsa19jbnQrKzsKPiArICAgICAgICAgICAgICAgfQo+
ICsgICAgICAgfQo+ICsKPiArICAgICAgIHJldHVybiBzdWJfY2xrX2NudDsKPiArfQo+ICsKPiAg
c3RhdGljIGludCBpbml0X2Jhc2ljX2Nsa3Moc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwg
c3RydWN0IGNsayAqKmNsaywKPiAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBjaGFyICog
Y29uc3QgKm5hbWUpCj4gIHsKPiBAQCAtNTU5LDYgKzYxNCwxOCBAQCBzdGF0aWMgc3RydWN0IHNj
cCAqaW5pdF9zY3Aoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgICAgICAgICAgICAg
ICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUihyZXQp
Owo+Cj4gKyAgICAgICAgICAgICAgIGlmIChkYXRhLT5zdWJzeXNfY2xrX3ByZWZpeCkgewo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIHJldCA9IGluaXRfc3Vic3lzX2Nsa3MocGRldiwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGF0YS0+c3Vic3lzX2Nsa19wcmVm
aXgsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNjcGQtPnN1YnN5
c19jbGspOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKSB7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICIlczogc3Vic3lzIGNsayB1bmF2YWlsYWJs
ZVxuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGF0YS0+bmFt
ZSk7CgpBbmQgdGhpcyBwcmludCBpcyBhbHNvIHJlZHVuZGFudC4KCgo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIocmV0KTsKPiArICAgICAgICAgICAgICAg
ICAgICAgICB9Cj4gKyAgICAgICAgICAgICAgIH0KPiArCj4gICAgICAgICAgICAgICAgIGdlbnBk
LT5uYW1lID0gZGF0YS0+bmFtZTsKPiAgICAgICAgICAgICAgICAgZ2VucGQtPnBvd2VyX29mZiA9
IHNjcHN5c19wb3dlcl9vZmY7Cj4gICAgICAgICAgICAgICAgIGdlbnBkLT5wb3dlcl9vbiA9IHNj
cHN5c19wb3dlcl9vbjsKPiAtLQo+IDEuOC4xLjEuZGlydHkKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlz
dAo+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
