Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C1BD793E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weRp1qQlm3YGrtAPPh+DawK0FTRQCNplw/99PbmQdG0=; b=LVEXqUMW18uxL6
	0l1q07Yp2pYLJsxkS1RcLNuo6VvkoiAcKdrWLz1IVUc/7IRMYSRSr03PmtqjNSOiGdBCI2D1IeDVY
	LL9GGczXo340ZXi1EtH03OBOIAGj7emYaFmXpIVQonel28s25dIv7vh165mFXi8tSEnpHRrZlrHK7
	DwybnAd6fkowYZdae15vZTWS1KS248carIUMalQoPSgJJ7yg9k+ijBowxhXzLUalU/03F3Xem7K1/
	2bK9tIYjYjG+hVirrntt5PqTJhlFhQZEePQE5dQvcyyHul+EYaOca/bovhjEwWhbSWb7HxmeL04HC
	R/VitBluP9kk/dKV+JgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOCx-0003n8-Ep; Tue, 15 Oct 2019 14:53:55 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOBx-0002wo-2g
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:52:54 +0000
Received: by mail-io1-xd44.google.com with SMTP id c25so46430971iot.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lR+fhPNWor2rYZMGYZDZtF6Wt6PhWh078oo5smcPWbw=;
 b=MJZ9w+VR4SFMaPZYIna1r3mj3e36YkhvZ1IdOtv8qjqDmJhTXTlqITpoqccq7AwgWW
 NsTWW8ftDTCbwVR5fHTrtYCrjmjd2CtLBp8y1+RicahyIuZGeoONq8nwLSpJ66hZYGNj
 ZbpMNivy5IHSzWONETf1DHvVJO4ZCDG0M10fVpGdt3lyIw7FTGFrn7qxXZ8BgkbFdnOO
 NaAaxE2AOvqlMagIN/pFYvcYwdv7JpKn9t/GwWin5j0yTUtMtx/KY0bUuSfF4Hy6aNnO
 tZVdFU+m2NgFXiQK287gPdv3t4OF4Z9QLOb3BXRVnvHdS1O7mmJsWH0WL4yjRHtaK9sY
 r5wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lR+fhPNWor2rYZMGYZDZtF6Wt6PhWh078oo5smcPWbw=;
 b=fdO5xbHzZ2l+zZHstZLAQzrwrFyyQQI2E1UC7AMP5eSZimAUstDCxdRuE8EMZ4aQ54
 9FVxx8NHL8XrFs5LgNtR/UxZyeyi0YvzNzmd25TVIpchj8RheFWv9DUv+85KLpzDFnzP
 q57wqmy7lOPwEBXz8d1Snwf04Q9KtJT8Up46CiCQ9UpU9QmftlzSKEHTJ6BHvhsFaBnc
 zvEJgkS2n8gXyir8KJVRRtKXPAQjjnSh35XmjkhhH+Bod8Ey5evFI72Zqyp+ZKJmM01I
 6iut9de/ZvW10lxOnhkZlHgKffK7b0i31G+sAYV4xHoypvTUk+yPGlJetBo+FpsGX1MZ
 JEPQ==
X-Gm-Message-State: APjAAAUBp4JRVyUTKS5lGnwq8RwKAj4JJQ31EHOWGA/zBcUfm7r6ysj9
 J1ZqpEMKnHp8OTEQGNQSH+kFkhGmpD4m2IQiuwo=
X-Google-Smtp-Source: APXvYqy1Ajm+FY69Bd8FosgGeFPehh7/h8rWF2Bp7Qa2VvtQg18WBXbmBLNJGBSkFZNXJ6QtB6gMbldg00EplaHfJ/A=
X-Received: by 2002:a92:6701:: with SMTP id b1mr912513ilc.181.1571151170241;
 Tue, 15 Oct 2019 07:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
From: Tomasz Figa <tomasz.figa@gmail.com>
Date: Tue, 15 Oct 2019 23:52:39 +0900
Message-ID: <CA+Ln22HJmVwC1r+SuWG6RgFLCtsG6TPzQK_t8rUtB=SsZ0LyhA@mail.gmail.com>
Subject: Re: [PATCH 01/36] ARM: samsung: make S3C24XX_MISCCR access indirect
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_075253_144638_C4897567 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomasz.figa[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "moderated list:SAMSUNG SOC CLOCK DRIVERS"
 <linux-samsung-soc@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwKCjIwMTnlubQxMOaciDEx5pelKOmHkSkgNTozMCBBcm5kIEJlcmdtYW5uIDxhcm5k
QGFybmRiLmRlPjoKPgo+IFRoZSBjbGsgZHJpdmVyIHVzZXMgYm90aCBhIGZ1bmN0aW9uIGNhbGwg
aW50byBhbiBleHBvcnRlZAo+IHBsYXRmb3JtIGZpbGUgYW5kIGEgZGlyZWN0IHJlZ2lzdGVyIGFj
Y2VzcyB0byBhIGhhcmRjb2RlZAo+IHZpcnR1YWwgYWRkcmVzcyBmb3IgYWNjZXNzaW5nIHRoZSBN
SVNDQ1IgcmVnaXN0ZXIsIGJvdGgKPiBiZWNvbWUgYXJlIGEgcHJvYmxlbSBmb3IgYSBtdWx0aXBs
YXRmb3JtIGtlcm5lbCBiZWNhdXNlCj4gb2YgdGhlIGhlYWRlciBmaWxlIGRlcGVuZGVuY3kuCj4K
PiBNYWtlIHRoaXMgYW4gaW5kaXJlY3QgZnVuY3Rpb24gY2FsbCB0aHJvdWdoIHBsYXRmb3JtIGRh
dGEKPiBpbnN0ZWFkLgo+Cj4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5k
Yi5kZT4KPiAtLS0KPiAgYXJjaC9hcm0vbWFjaC1zM2MyNHh4L2NvbW1vbi5jICAgICAgICAgfCAg
MyArKysKPiAgZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstczNjMjQxMC1kY2xrLmMgfCAxMCArKysr
LS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtczNjMjR4eC9jb21tb24uYyBiL2FyY2gv
YXJtL21hY2gtczNjMjR4eC9jb21tb24uYwo+IGluZGV4IDNkYzAyOWMyZDJjYi4uZWJmNmJkZTY3
ODE2IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtczNjMjR4eC9jb21tb24uYwo+ICsrKyBi
L2FyY2gvYXJtL21hY2gtczNjMjR4eC9jb21tb24uYwo+IEBAIC02NjcsNSArNjY3LDggQEAgc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSBzM2MyNDEwX2RldmljZV9kY2xrID0gewo+ICAgICAgICAgLmlk
ICAgICAgICAgICAgID0gMCwKPiAgICAgICAgIC5udW1fcmVzb3VyY2VzICA9IEFSUkFZX1NJWkUo
czNjMjQxMF9kY2xrX3Jlc291cmNlKSwKPiAgICAgICAgIC5yZXNvdXJjZSAgICAgICA9IHMzYzI0
MTBfZGNsa19yZXNvdXJjZSwKPiArICAgICAgIC5kZXYgICAgICAgICAgICA9IHsKPiArICAgICAg
ICAgICAgICAgLnBsYXRmb3JtX2RhdGEgPSBzM2MyNDEwX21vZGlmeV9taXNjY3IsCgpUaGFua3Mg
Zm9yIHRoZSBwYXRjaCEKCkp1c3Qgb25lIG1pbm9yIG5pdDogSXQgZG9lc24ndCBsb29rIHZlcnkg
bmljZSB0byBwYXNzIGEgZnVuY3Rpb24KcG9pbnRlciBkaXJlY3RseSBhcyBwbGF0Zm9ybSBkYXRh
LiBDb3VsZCB3ZSBoYXZlIGEgc3RydWN0IGRlZmluZWQKaW5zdGVhZCAtIHdpdGggYSBrZXJuZWxk
b2MgY29tbWVudCBkZXNjcmliaW5nIHRoZSBmdW5jdGlvbiBwb2ludGVyCmZpZWxkPwoKQmVzdCBy
ZWdhcmRzLApUb21hc3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
