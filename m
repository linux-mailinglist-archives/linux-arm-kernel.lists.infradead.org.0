Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE331E368F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HquERNqWBp6/MCrjFCpwHetmNT0lNA4XnKI3QIt2R8=; b=S9Molso//wEjht
	fbwYeP4nEKZ+YTqN80N04eJBR7vCCKAEgOFGDGfAhL9WqS1Tok2fIxpokpfq7TxNU80mbwOuRG0Cb
	0a7l3FCzfvMnz7YX4CCclqVlGV7ygxrfeo8zRahcpjYyjLj261X8MCR231kEVTTNPNbBvKODbNvkc
	F2R+m4F62gTK0QcZBpdNmQuu1aZuT/ZxqJ30M5wPMxLDfibouGNiNsOR1k45quDnLdWm8peGVGD1D
	Vbq+C2RU/mwVdLu15wS780NwUW1NvSHwzDGozesDF76TuSKhH7Xc7I8Der+HlTSH60ruMBn/ebi8F
	fveHm94FDVZ5q06HZ/9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmn2-0003dQ-Ri; Wed, 27 May 2020 03:31:36 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmmr-0003d3-2w
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:31:26 +0000
Received: by mail-il1-x144.google.com with SMTP id j3so22588654ilk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 20:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mYTDBjmF5P3Prc+HqW20hE68LTSpmhjJUYlei4pinL4=;
 b=gqG/fvpbY+IG7TyiRzSTZ9wDGJLAHqG+o9kNi1AF9EL+ny4VwJW8K4LxWrnbLj+2aG
 2glK+H/RU/c7WBt6NoFHIPTeid2VMzvufC3lzP+lg/+KT6G5OjUYdzk1eiT1uyVQcIOx
 Hs+qapgUNPryh9o3UdyGBOqeckXGT7W0FCKlX6QMQAFJAhXFk+RK2B+BvQ9mI88x7AKL
 +Nzf5eOLuW/BbgmASX4gDk97t8UoqWmo2RtbjP3ZKxtiFi7wEpH3aVcSKcIL+mBo5qPT
 7NtdN1wgwoI/hRCJwS/P90XKG51rV9cmbRn7RVOLBrZ4a7JnWmXWeTz++nPwy7tuupdz
 msfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mYTDBjmF5P3Prc+HqW20hE68LTSpmhjJUYlei4pinL4=;
 b=sttvPWHkCshq0WEUgEc/TEWvvlLWwzk6+iJ7BRrcjlnUdK3UCAxdTY2ge8ITIhw7eM
 x0JyVqRbn0LE8oM9QMjg2eQQ4+jcAduEi0koJ0eM6kZrDuE311/qZ7OKCaHx9GO1agoj
 gxml4btE21mQ/qKH5DSUO7BEVWsF5Ig69oJXODWEshxf5YCjMWnRfH0JgbDwXmWCRISC
 pzyYNaz+RvrZa7YN/a5mIrJc/fnmmoDK87cF1LxZwa2EOMlS+UyD9QOzHKEM0/WdedHX
 nd0fCu+ghMCsRWGW6NObo+uoz9mMMXyZuvvJ/2YBnVMzibn4Vev6iQOPe4/uje9zvEdL
 8zNA==
X-Gm-Message-State: AOAM530eb2/Sh2X2kgcQT42/v6oOf7fLVUsP89os84Zc0RNUntoCUJxE
 KykAp7pLuP2y3SgjAjN3jfYPT6KB8mggt0Dq+VE=
X-Google-Smtp-Source: ABdhPJwuyAxSxLkhVb7QvcW25hO5jSZaAlIwIL+dnkE3kgzuiin71PvFpxjwpkiCyDSpFszGEGBvvFVmU0Khgad6kBg=
X-Received: by 2002:a92:40ca:: with SMTP id d71mr4124378ill.200.1590550284118; 
 Tue, 26 May 2020 20:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
 <1590378348-8115-6-git-send-email-dillon.minfei@gmail.com>
 <159054389592.88029.12389551390229328953@swboyd.mtv.corp.google.com>
In-Reply-To: <159054389592.88029.12389551390229328953@swboyd.mtv.corp.google.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Wed, 27 May 2020 11:30:47 +0800
Message-ID: <CAL9mu0L1OxDMHwNjfh+11br+z3vt+wyq45Q7-KNVSLTENAxH+Q@mail.gmail.com>
Subject: Re: [PATCH v5 5/8] clk: stm32: Fix stm32f429's ltdc driver hang in
 set clock rate, fix duplicated ltdc clock register to 'clk_core' case ltdc's
 clock turn off by clk_disable_unused()
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_203125_146142_EC2E9A14 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RlcGhlbiwKClRoYW5rcyBmb3IgcmV2aWV3aW5nLgoKT24gV2VkLCBNYXkgMjcsIDIwMjAg
YXQgOTo0NCBBTSBTdGVwaGVuIEJveWQgPHNib3lkQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gUXVv
dGluZyBkaWxsb24ubWluZmVpQGdtYWlsLmNvbSAoMjAyMC0wNS0yNCAyMDo0NTo0NSkKPiA+IEZy
b206IGRpbGxvbiBtaW4gPGRpbGxvbi5taW5mZWlAZ21haWwuY29tPgo+ID4KPiA+IGx0ZGMgc2V0
IGNsb2NrIHJhdGUgY3Jhc2hlZAo+ID4gICAgJ3Bvc3RfZGl2X2RhdGFbXScncyBwbGxfbnVtIGlz
IFBMTF9JMlMsIFBMTF9TQUkgKG51bWJlciBpcyAxLDIpLiBidXQsCj4KPiBQbGVhc2Ugd3JpdGUg
InBvc3RfZGl2X2RhdGFbXSdzIiBpZiBpdCBpcyBwb3NzZXNzaXZlLiAiQnV0IiBkb2Vzbid0Cj4g
c3RhcnQgYSBzZW50ZW5jZS4gVGhpcyBpcyBvbmUgc2VudGVuY2UsIG5vdCB0d28uCk9rLgoKPgo+
ID4gICAgIGFzIHBsbF9udW0gaXMgb2Zmc2V0IG9mICdjbGtzW10nIGlucHV0IHRvIGNsa19yZWdp
c3Rlcl9wbGxfZGl2KCksIHdoaWNoCj4gPiAgICAgaXMgRkNMSywgQ0xLX0xTSSwgZGVmaW5lZCBp
biAnaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9zdG0zMmZ4LWNsb2NrLmgnCj4gPiAgICAgc28s
IHRoaXMgaXMgYSBudWxsIG9iamVjdCBhdCB0aGUgcmVnaXN0ZXIgdGltZS4KPiA+ICAgICB0aGVu
LCBpbiBsdGRjJ3MgY2xvY2sgaXNfZW5hYmxlZCgpLCBlbmFibGUoKSwgd2lsbCBjYWxsIHRvX2Ns
a19nYXRlKCkuCj4gPiAgICAgd2lsbCByZXR1cm4gYSBudWxsIG9iamVjdCwgY2F1c2Uga2VybmVs
IGNyYXNoZWQuCj4gPiAgICAgbmVlZCBjaGFuZ2UgcGxsX251bSB0byBQTExfVkNPX0kyUywgUExM
X1ZDT19TQUkgZm9yICdwb3N0X2Rpdl9kYXRhW10nCj4gPgo+ID4gIGR1cGxpY2F0ZWQgbHRkYyBj
bG9jawo+ID4gICAgJ3N0bTMyZjQyOV9nYXRlc1tdJyBoYXMgYSBtZW1iZXIgJ2x0ZGMnIHJlZ2lz
dGVyIHRvICdjbGtfY29yZScsIGJ1dCBubwo+ID4gICAgIHVwcGVyIGRyaXZlciB1c2UgaXQsIGx0
ZGMgZHJpdmVyIHVzZSB0aGUgbGNkLXRmdCBkZWZpbmVkIGluCj4gPiAgICAnc3RtMzJmNDI5X2F1
eF9jbGtbXScuIGFmdGVyIHN5c3RlbSBzdGFydHVwLCBhcyBzdG0zMmY0MjlfZ2F0ZXNbXSdzIGx0
ZGMKPiA+ICAgICBlbmFibGVfY291bnQgaXMgemVybywgc28gdHVybiBvZmYgYnkgY2xrX2Rpc2Fi
bGVfdW51c2VkKCkKPgo+IEkgc29ydCBvZiBmb2xsb3cgdGhpcy4gSXMgdGhpcyBhbm90aGVyIHBh
dGNoPyBTZWVtcyBsaWtlIHR3byB0aGluZ3MgYXJlCj4gZ29pbmcgb24gaGVyZS4KClRoaXMgcGF0
Y2ggZml4IHR3byBidWdzIGFib3V0IHN0bTMyJ3MgY2xvY2suCmJ1ZzE6ICBsdGRjIGRyaXZlciBs
b2FkaW5nIGhhbmcgaW4gY2xrX3NldF9yYXRlKCksIHRoaXMgaXMgZHVlIHRvCm1pc3VzZSDigJhQ
TExfVkNPX1NBSScgYW5kCiAgICAgICAgICAgJ1BMTF9TQUknLgoKIHNwZWFrIGluIHNob3J0LCBm
cm9tIHRoZSBiZWxvdyBjb2RlLAogICAg4oCZUExMX1NBSScgaXMgMiwgJ1BMTF9WQ09fU0FJJyBp
cyA3LgogICAgJ3Bvc3RfZGl2JyBwb2ludCB0byAncG9zdF9kaXZfZGF0YVtdJywgJ3Bvc3RfZGl2
LT5wbGxfbnVtJyBpcwpQTExfSTJTLCBQTExfU0FJLgogICAgJ2Nsa3NbUExMX1ZDT01fU0FJJyBo
YXMgdmFpbGQgJ3N0cnVjdCBjbGtfaHcqICcgcmV0dXJuIGZyb20Kc3RtMzJmNF9yY2NfcmVnaXN0
ZXJfcGxsKCkKICAgIGJ1dCwgYXQgbGluZSAxNzc2LCB1c2UgdGhlICdjbGtzW3Bvc3RfZGl2LT5w
bGxfbnVtXScsIGVxdWFsIHRvCidjbGtzW1BMTF9TQUldJywgdGhpcyBpcyBpbnZhaWxkCiAgICBh
dCB0aGF0IHRpbWUuCgppbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3N0bTMyZngtY2xvY2suaAoy
OSAjZGVmaW5lIFBMTF9WQ09fU0FJICAgICAgICAgICAgIDcKCmRyaXZlcnMvY2xrL2Nsay1zdG0z
MmY0LmMKIDQ5NCBlbnVtIHsKIDQ5NSAgICAgICAgIFBMTCwKIDQ5NiAgICAgICAgIFBMTF9JMlMs
CiA0OTcgICAgICAgICBQTExfU0FJLAogNDk4IH07CgoKIDU1OCBzdGF0aWMgY29uc3Qgc3RydWN0
IHN0bTMyZjRfcGxsX3Bvc3RfZGl2X2RhdGEKcG9zdF9kaXZfZGF0YVtNQVhfUE9TVF9ESVZdID0g
ewogNTU5ICAgICAgICAgeyBDTEtfSTJTUV9QRElWLCBQTExfSTJTLCAicGxsaTJzLXEtZGl2Iiwg
InBsbGkycy1xIiwKIDU2MCAgICAgICAgICAgICAgICAgQ0xLX1NFVF9SQVRFX1BBUkVOVCwgU1RN
MzJGNF9SQ0NfRENLQ0ZHUiwgMCwgNSwgMCwgTlVMTH0sCiA1NjEKIDU2MiAgICAgICAgIHsgQ0xL
X1NBSVFfUERJViwgUExMX1NBSSwgInBsbHNhaS1xLWRpdiIsICJwbGxzYWktcSIsCiA1NjMgICAg
ICAgICAgICAgICAgIENMS19TRVRfUkFURV9QQVJFTlQsIFNUTTMyRjRfUkNDX0RDS0NGR1IsIDgs
IDUsIDAsIE5VTEwgfSwKIDU2NAogNTY1ICAgICAgICAgeyBOT19JRFgsIFBMTF9TQUksICJwbGxz
YWktci1kaXYiLCAicGxsc2FpLXIiLCBDTEtfU0VUX1JBVEVfUEFSRU5ULAogNTY2ICAgICAgICAg
ICAgICAgICBTVE0zMkY0X1JDQ19EQ0tDRkdSLCAxNiwgMiwgMCwgcG9zdF9kaXZyX3RhYmxlIH0s
CiA1NjcgfTsKCgoxNzU5ICAgICAgICAgY2xrc1tQTExfVkNPX1NBSV0gPSBzdG0zMmY0X3JjY19y
ZWdpc3Rlcl9wbGwoInZjb19pbiIsCjE3NjAgICAgICAgICAgICAgICAgICAgICAgICAgJmRhdGEt
PnBsbF9kYXRhWzJdLCAmc3RtMzJmNF9jbGtfbG9jayk7CjE3NjEKMTc2MiAgICAgICAgIGZvciAo
biA9IDA7IG4gPCBNQVhfUE9TVF9ESVY7IG4rKykgewoxNzYzICAgICAgICAgICAgICAgICBjb25z
dCBzdHJ1Y3Qgc3RtMzJmNF9wbGxfcG9zdF9kaXZfZGF0YSAqcG9zdF9kaXY7CjE3NjQgICAgICAg
ICAgICAgICAgIHN0cnVjdCBjbGtfaHcgKmh3OwoxNzY1CjE3NjYgICAgICAgICAgICAgICAgIHBv
c3RfZGl2ID0gJnBvc3RfZGl2X2RhdGFbbl07CjE3NjcKMTc2OCAgICAgICAgICAgICAgICAgaHcg
PSBjbGtfcmVnaXN0ZXJfcGxsX2Rpdihwb3N0X2Rpdi0+bmFtZSwKMTc2OSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHBvc3RfZGl2LT5wYXJlbnQsCjE3NzAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBwb3N0X2Rpdi0+ZmxhZywKMTc3MSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGJhc2UgKyBwb3N0X2Rpdi0+b2Zmc2V0LAoxNzcyICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcG9zdF9kaXYtPnNoaWZ0LAoxNzczICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcG9zdF9kaXYtPndpZHRoLAoxNzc0ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcG9zdF9kaXYtPmZsYWdfZGl2LAoxNzc1ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcG9zdF9kaXYtPmRpdl90YWJsZSwKMTc3NiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNsa3NbcG9zdF9kaXYtPnBsbF9udW1dLAoxNzc3ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJnN0bTMyZjRfY2xrX2xvY2spOwoxNzc4CjE3NzkgICAgICAgICAg
ICAgICAgIGlmIChwb3N0X2Rpdi0+aWR4ICE9IE5PX0lEWCkKMTc4MCAgICAgICAgICAgICAgICAg
ICAgICAgICBjbGtzW3Bvc3RfZGl2LT5pZHhdID0gaHc7CjE3ODEgICAgICAgICB9CgpidWcyOiBs
dGRjJ3MgY2xvY2sgdHVybiBvZmYgYnkgY2xrX2Rpc2FibGVfdW51c2VkKCkKCmZyb20geW91ciBj
b21tZW50cyBhdCAnW1BBVENIIHYzIDQvNV0gY2xrOiBzdG0zMjogRml4IHN0bTMyZjQyOSBsdGRj
CmRyaXZlciBsb2FkaW5nIGhhbmcKIGluIGNsayBzZXQgcmF0ZS4ga2VlcCBsdGRjIGNsayBydW5u
aW5nIGFmdGVyIGtlcm5lbCBzdGFydHVwJyAsIGkgZ28KZGVlcCBpbnRvIHRoZSBjb2RlLCBmb3Vu
ZApzdG0zMidzIGNsayBkcml2ZXIgcmVnaXN0ZXIgdHdvIGdhdGUgY2xrIHRvIGNsayBjb3JlIGJ5
CmNsa19od19yZWdpc3Rlcl9nYXRlKCkgYW5kCmNsa19od19yZWdpc3Rlcl9jb21wb3NpdGUoKQoK
Zmlyc3Q6ICdzdG0zMmY0MjlfZ2F0ZXNbXScsIGNsayBuYW1lIGlzICdsdGRjJywgdGhpcyBpcyBu
byB1c2VyIHVzZWQuCnNlY29uZDogJ3N0bTMyZjQyOV9hdXhfY2xrW10nLCBjbGsgbmFtZSBpcyAn
bGNkLXRmdCcsIHRoaXMgaXMgdXNlZCBieQpsdGRjIGRyaXZlcgoKYm90aCBvZiB0aGVtIHBvaW50
IHRvIHRoZSBzYW1lIG9mZnNldCBvZiBzdG0zMidzIFJDQyByZWdpc3Rlci4gYWZ0ZXIKa2VybmVs
IGVudGVyIGNvbnNvbGUsCmNsayBjb3JlIHR1cm4gb2ZmIGx0ZGMncyBjbGsgYXMgJ3N0bTMyZjQy
OV9nYXRlc1tdJyBpcyB1bnVzZWQuIGJ1dCwKYWN0dWFsbHkgJ3N0bTMyZjQyOV9hdXhfY2xrW10n
CmlzIGluIHVzZS4KCmkgY2FuIHNlcGFyYXRlIHRoaXMgcGF0Y2ggdG8gdHdvLCBlYWNoIGJ1ZyBh
IHBhdGNoIGlmIG5lY2Vzc2FyeQoKPgo+ID4KPiA+IENoYW5nZXMgc2luY2UgVjM6Cj4gPiAxIGRy
b3AgbGFzdCB3cm9uZyBjaGFuZ2VzIGFib3V0ICdDTEtfSUdOT1JFX1VOVVNFRCcgcGF0Y2gKPiA+
IDIgZml4IFBMTF9TQUkgbWlzbWF0Y2ggd2l0aCBQTExfVkNPX1NBSQo+Cj4gVGhpcyBjaGFuZ2Ug
bG9nIGdvZXMgdW5kZXIgdGhlIC0tLSBiZWxvdy4Kb2sKCj4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBkaWxsb24gbWluIDxkaWxsb24ubWluZmVpQGdtYWlsLmNvbT4KPgo+IEFueSBGaXhlcyB0YWc/
Cm9rLCB3aWxsIGFkZCAtLWZpeHVwIGluIGdpdCBjb21taXQgbmV4dCB0aW1lLCB0aGlzIHBhdGNo
IGZpeCB0d28gYnVncywKaSBzaG91bGQgbWFrZSB0d28gY29tbWl0LCBlYWNoIG9uZSBoYXMgYQpm
aXhlcyB0YWcsIHJpZ2h0PwpmaXJzdCBwb2ludCB0byAnNTE3NjMzZSBjbGs6IHN0bTMyZjQ6IEFk
ZCBwb3N0IGRpdmlzb3IgZm9yIEkyUyAmIFNBSSBQTExzJwpzZWNvbmQgcG9pbnQgdG8gJ2RhZjJk
MTEgY2xrOiBzdG0zMmY0OiBBZGQgbGNkLXRmdCBjbG9jaycKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
