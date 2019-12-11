Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385EA11B1B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:32:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebgV7hzuQ8Ph/C4SFEgcc3Gf0bZpv8qRnXzHIedwo5Q=; b=IAigUeER3d5c2q
	9R1r9qqiQLvdCZuCQzSKWema01WR+D1cBmFLAChFTs2CqrePXaVf2VcYtTfGuM8huM573+Zwf95Kn
	SQhGtzoFQNPfhlYciDOulpWu1AK4E8Fx3cXhCV5gEoTxcIn2OPXjKTqo/1QBtqT3NQTnyjRyogjM3
	4NFtK7tj0/DxEZ3A2G2w6C7t4b6vb8dwf8LuVb3Y+wxw6f37Ad/dNjYy5Bo8ygQvLefcChykUuOFo
	jFMBo+lXN5Bo90Fh8L9tT/mWRYiTX6WkJfhPiZHlm3FwT/kT8na/a480B3jiCptQCZZwI/WvTHgXe
	kz6Y7SxIPHHcusM/ouJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3ye-0007ym-LA; Wed, 11 Dec 2019 15:32:36 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3yO-0007vh-4a
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:32:23 +0000
Received: by mail-lj1-x244.google.com with SMTP id 21so24605072ljr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uAdwNMSEaLso7fXrtNeiaOmvaSTmeujcCsBp3bCVcw0=;
 b=gRvVNXgWH/GGHLtynZ5kGn6PZS05h5WWPN1E07u23x0/z9DzrwKeNfBrpcNLOYoray
 0FmGgY0Q6a+ElNakVq7crLg0/yk+gFaMkYRUHILs3ma8oyEx0sqAej7zouDLHx/jVGI8
 xm/QpBjTCmGtnEBt8q9rVKOahsDgYRRl1KokykL7Hj2/f0W1S1Ycqq/yyX9X/sBeLdGk
 p9kFALBIW3mDlOlGvCkqZ1JIK8bKbwQ5yk/oQ1Y744zPdOhIcLkgyvy2GJCIy70QCiwj
 MfUD9j2DxsyhxQWkCCJ25r1N/41hMRoN2vXBSS+VLcETriLgun8DUzArrqYsVjMYPtyR
 2scA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uAdwNMSEaLso7fXrtNeiaOmvaSTmeujcCsBp3bCVcw0=;
 b=PT/ejgxS4H6OVRmy2lszcvr4bDd3n5A8xE0lX8MxaSUX6ZcOrYwPmnbwCtn+Zl341i
 +XFJExFqn7Mg4CLlyEaGGQjkYz0eKVBKjv512IhRlKjnHVDXzI0xAMAOoYwFEW5KJz39
 7M+/AR0XL1n4CjT6wCl3fKaiD/v32DOEypsWmo5nAyWx5mBUgE8Hi6twz2NqcrUTw0cs
 WXV/jjw14BbnKNaIO+1bfd+IupXa0L+8f4InbKxx21LbZCkA7fDm8NN7VHy6Tr97qMFV
 xCPMH2yMq1SXflsxBSS7r9bojg7/3n0dClQugBXUj/SeQHIwowAMK6BfLFRtvqt8oqv2
 ySuQ==
X-Gm-Message-State: APjAAAVRoPjbfDHS8gmbPAH4plRJwtpVu8GmwS0KRkVTUK4378NV+Vjl
 DrWStGjlzJCSzEhVdwe6feZ3aWZAx5jdm4Fa/4ZAYbBVjd4=
X-Google-Smtp-Source: APXvYqyb07WA/LVZKBjQ/5cQvE+z6aYi4eCnetpEKWdQsibymwcNOMIqm2wJdEMPWDP6szaeoLdC98LHcWuGkUrntzA=
X-Received: by 2002:a2e:8045:: with SMTP id p5mr2492343ljg.251.1576078337999; 
 Wed, 11 Dec 2019 07:32:17 -0800 (PST)
MIME-Version: 1.0
References: <e8b645da-9921-0436-ccfa-9abf4ae5b9d6@free.fr>
 <20191211132203.GD25745@shell.armlinux.org.uk>
 <20191211134531.4olcqep5ork5h4fn@pengutronix.de>
In-Reply-To: <20191211134531.4olcqep5ork5h4fn@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Dec 2019 16:32:06 +0100
Message-ID: <CACRpkdZAm5AML6cfrX_VrzyADASj1rsVXC3zwtfdo+aRSgX7fQ@mail.gmail.com>
Subject: Re: Trying to understand basic concepts about GPIO reset pin
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_073220_209107_1F013FE3 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: GPIO <linux-gpio@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMTEsIDIwMTkgYXQgMjo0NSBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBPbiBXZWQsIERlYyAxMSwgMjAxOSBh
dCAwMToyMjowM1BNICswMDAwLCBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gd3JvdGU6
Cj4gPiBPbiBXZWQsIERlYyAxMSwgMjAxOSBhdCAwMjowNTo0NVBNICswMTAwLCBNYXJjIEdvbnph
bGV6IHdyb3RlOgoKPiA+ID4gICAgIGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFsKGRldiwgInJlc2V0
IiwgR1BJT0RfT1VUX0xPVyk7Cj4gPiA+Cj4gPiA+IHRoZW4gSSBhbSBhYmxlIHRvIGludGVyYWN0
IHdpdGggdGhlIGRldmljZS4gSG93IGNhbiB0aGF0IGJlPwo+ID4KPiA+IFRoaXMgaXMgd2hlcmUg
dGhpbmdzIGdldCBjb21wbGljYXRlZC4gIEdQSU9EX09VVF9MT1cgaXMKPiA+IEdQSU9EX0ZMQUdT
X0JJVF9ESVJfU0VUIHwgR1BJT0RfRkxBR1NfQklUX0RJUl9PVVQgd2l0aG91dAo+ID4gR1BJT0Rf
RkxBR1NfQklUX0RJUl9WQUwuICBUaGUgYWJvdmUgd2lsbCB0aGVyZWZvcmUgY2FsbDoKPiA+Cj4g
PiAgICAgICBncGlvZF9kaXJlY3Rpb25fb3V0cHV0KGdwaW9kLCAhIShkZmxhZ3MgJiBHUElPRF9G
TEFHU19CSVRfRElSX1ZBTCkpOwo+ID4KPiA+IHdoaWNoIHdpbGwgYmUgemVyby4gIGdwaW9kX2Rp
cmVjdGlvbl9vdXRwdXQoKSByZXNwZWN0cyB0aGUgaW52ZXJzaW9uCj4gPiB0aGF0IEdQSU9fQUNU
SVZFX0xPVyBzcGVjaWZpZWQgaW4gRFQuICBTbywgR1BJT0RfT1VUX0xPVyB3aWxsIHNldAo+ID4g
dGhlIHJlc2V0IHNpZ25hbCBfaGlnaF8uCj4gPgo+ID4gSSBkb24ndCBibGFtZSB5b3UgZm9yIHRo
aW5raW5nIHRoaXMgaXMgY29uZnVzaW5nIC0gdGhlIHRlcm1pbm9sb2d5Cj4gPiBhZG9wdGVkIGlu
IHRoZSBrZXJuZWwgY2VydGFpbmx5IGlzLgo+ID4KPiA+IFRobmsgb2Ygd2hhdGV2ZXIgeW91IGdp
dmUgdG8gdGhlIG5vbi1yYXcgZnVuY3Rpb25zIGFzICJsb3cgbWVhbnMKPiA+IGluYWN0aXZlLCBo
aWdoIG1lYW5zIGFjdGl2ZSIuCj4KPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGdvb2QgdG8gbm90IHBh
c3MgR1BJT0RfT1VUX0xPVyB0bwo+IGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFsIChldCBhbCkuIFNv
bWV0aGluZyBsaWtlCj4KPiAgICAgICAgIGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFsKGRldiwgInJl
c2V0IiwgR1BJT0RfT1VUX0FDVElWRSk7Cj4KPiB3b3VsZCBiZSBtdWNoIGxlc3MgY29uZnVzaW5n
LiBOb3Qgc3VyZSB0aGlzIGV4aXN0cywgYnV0IGl0IHdvdWxkIG1ha2UgYQo+IGdvb2QgYWxpYXMg
Zm9yIEdQSU9EX09VVF9ISUdILgoKSSBoYXZlIHN1Z2dlc3RlZCBpbiBzb21lIG90aGVyIHRocmVh
ZCB0byBjcmVhdGUgYW4gYWxpYXMKR1BJT19PVVRfQVNTRVJURUQgLyBHUElPX09VVF9ERUFTU0VS
VEVECmFuZCBsaWtld2lzZSBjaGFuZ2UgdGhlIG5hbWUgb2YgdGhlIHByb3RvdHlwZQpncGlvZF9z
ZXRfdmFsdWUoZ3Bpb2QsIGludCB2YWx1ZSkgdG8KZ3Bpb2Rfc2V0X3N0YXRlKGdwaW9kLCBib29s
IGFzc2VydGVkKSByYXRoZXIgdGhhbiB0aGUKY3VycmVudCBpbnQgdmFsdWUgc28gaXQgaXMgW21v
cmVdIGNsZWFyIHdoYXQgdGhlIGFyZ3VtZW50IHRvCnRoZXNlIGZ1bmN0aW9ucyBtZWFuOiB0aGF0
IGl0IGlzIGEgbG9naWNhbCBsZXZlbCBub3QKYSBwaHlzaWNhbCBsZXZlbC4KClRoZW4gZ3JhZHVh
bGx5IG9yIHdpdGggYSBzZWQgc2NyaXB0IGp1c3QgbWFzcy1jb252ZXJ0CmFsbCB1c2VycyBvZiB0
aGUgQVBJIHRvIHRoaXMgc2lnbmF0dXJlLiBBIHNpbmdsZSBzd2lmdApjb252ZXJzaW9uIHdvdWxk
IGJlIHByZWZlcnJlZCBieSBtZSBwZXJzb25hbGx5LgoKSSdsbCB0cnkgdG8gYWRkIGl0IHRvIG15
IEdQSU8gcHVibGljIFRPRE8gc28gdGhhdCBvdGhlcnMKc2VlIGl0IGFuZCBiZSBhYmxlIHRvIHBp
Y2sgaXQgdXAsIGJlY2F1c2UgdGhlcmUgYXJlIHNvCm1hbnkgb25nb2luZyByZWZ1cmJpc2hpbmcg
dGFza3MgdGhhdCBJIG5lZWQgdG8gdGVuZCB0bwpwZXJzb25hbGx5LgoKWW91cnMsCkxpbnVzIFdh
bGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
