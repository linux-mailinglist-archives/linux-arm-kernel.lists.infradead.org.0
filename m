Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC060165B7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 11:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArxZjVv6Mj5Psq6hL/ad2+lcXe/+zUI6CHm9YIzfMxc=; b=prvNw8DWx9txZD
	YGuUHyopQ1KA/SqRlJr9Cd7qdW9l0VuS5RPUKlVGD2Stvy99kSfoL64fqmivmukfNq5dU8PrwPmBM
	BFgylQOEPSO2BTPtip1ZsDcT2BSYy5oawnSLs0gq4q7XJhcZoE4PKG2BsWGWrGf9Hpqq4emF/9fuU
	Nc5q1Bzmi86PN+F17FSrXgRcSHaB14jCE9viQgVk9tOh6pY0nnzhsoT8vtvNTDL6f9R9jT2iG+iFB
	t+7r++keIrJHB58C1xj0IGMBBiID/hLFiGTMB7QRpR+DR7FfXHHufZ+NwQpTiK1zM5HS+o5bDRaMU
	7AutVpKjjqvqCmtmR34g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4j4n-0006mC-VH; Thu, 20 Feb 2020 10:29:01 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4j4e-0006ln-67
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 10:28:53 +0000
Received: by mail-qk1-x744.google.com with SMTP id c188so3054108qkg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 02:28:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=V+D+Oguuyj+RUr3A3Lx/J2MyIAXszwuZogb4QISizTY=;
 b=JbRmvJg89oGETca2ebk+jHa32PMmkvyzx4Vp/pxwdvYV1A5Ybt+qcld0w9znyCHot3
 z9lzzT5XaTtnksYFr1npZRvCz16QsXhrfzhRUG2xSRr/MZaC+MQXfrtqotJPuVbm9rFc
 TfWFQN/wPoYNe/Hv2ZOK12WdZsdLZAjoAdV4Ly/9J0BpnNl4D3FBMLbeCWWfsnkHOR9Q
 bfTuyeyaC5y9tZug9cBXCN1jaN0r63vjEcu6YDTl+/ktflr0ov5GPZ9cKLb4swkaJJKI
 +InJc335F84vnbeQGPIAPBv7+sY57/x2lhtjSlA9cbXxMx8M1KD/OHZPhzFg1lGVN6E/
 mzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=V+D+Oguuyj+RUr3A3Lx/J2MyIAXszwuZogb4QISizTY=;
 b=fb7Gt37ubCsRIzuBTXjTQMm2nbH7GywYyIlR4uxxilLxIyjWzYt5pkGKbcrGHhU8e9
 Pwtf8nvLgH/QV7kHKp0TcCxDkGdEOIcs2qwgnDsVip7m5uWgWmOSZw5f0VIBZ5nqRuXh
 fW+a5JJKE6j6uuk/bnZprBsbeSWFR8E7V/HACVEPkxFv6FcSxs1Lo114zOEdQjl4rMCN
 Bl/TvzfG1ZbQyPVDJA53BEGEpa0k+cKXjTuMcZpcSbUsaHc0zxjSmwnsRTkIxQPwoil3
 n1/Z69SgdOSBvKR6yNJspvRXjI4ykDVBUoEYa63D9EpLkP4KUZAA+O5/IJOg/e8+aVfe
 VQZQ==
X-Gm-Message-State: APjAAAUE5B9CkDkgg1cudf7JqCo20DNmhuD70d1wjV6g5cgjZu7U1ZVI
 SsfxlnwV8VibZvVEL9y6OipDSGdlPCmU/CcDCZOJmA==
X-Google-Smtp-Source: APXvYqxykPihTXTgrIShZPQYasPSZbasbw4QwcYCWUECJz0hLDszKBzPXxvT3OnTzm3yGMIO8Ev1AxqGbckdQ1v1gYQ=
X-Received: by 2002:a37:4808:: with SMTP id v8mr24745184qka.263.1582194531385; 
 Thu, 20 Feb 2020 02:28:51 -0800 (PST)
MIME-Version: 1.0
References: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 20 Feb 2020 11:28:40 +0100
Message-ID: <CAMpxmJX1zTpeBGdd6DSe_o3mxUW7ObsFbRjptGQBZB1-4YE7UQ@mail.gmail.com>
Subject: Re: [PATCH V3 0/7] gpio: zynq: Update on gpio-zynq driver
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_022852_223869_B0DD1C75 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

cG9uLiwgMTcgbHV0IDIwMjAgbyAxMzozMyBTcmluaXZhcyBOZWVsaSA8c3Jpbml2YXMubmVlbGlA
eGlsaW54LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBUaGlzIHBhdGNoIHNlcmllcyBkb2VzIHRoZSBm
b2xsb3dpbmc6Cj4gLXByb3RlY3QgZGlyZWN0aW9uIGluL291dCB3aXRoIGEgc3BpbmxvY2sKPiAt
QWRkIGJpbmRpbmcgZm9yIFZlcnNhbCBncGlvCj4gLUFkZCBiaW5kaW5nIGZvciBwbWMgZ3BpbyBu
b2RlCj4gLUFkZCBWZXJzYWwgc3VwcG9ydAo+IC1EaXNhYmxlIHRoZSBpcnEgaWYgaXQgaXMgbm90
IGEgd2FrZXVwIHNvdXJjZQo+IC1BZGQgcG1jIGdwaW8gc3VwcG9ydAo+IC1SZW1vdmUgZXJyb3Ig
cHJpbnRzIGluIEVQUk9CRV9ERUZFUgo+Cj4gLS0tCj4gQ2hhbmdlcyBpbiBWMjoKPiAtIEluIHBy
ZXZpb3VzIHNlcmllcyBbUEFUQ0ggMS84XSBhbHJlYWR5IGFwcGxpZWQgb24gImxpbnV4LW5leHQi
Lgo+IC0gRml4ZWQgY2hlY2twYXRjaCB3YXJuaW5nIGZvciBzcGlubG9jayBkZXNjcmlwdGlvbi4K
PiAtIEFkZGVkIGRlc2NyaXB0aW9uIGZvciBWZXJzYWwgUFNfR1BJTyBhbmQgUE1DX0dQSU8uCj4g
Q2hhbmdlcyBpbiBWMzoKPiAtIFVwZGF0ZWQgY29tbWl0IGRlc2NyaXB0aW9uIGZvciBQQVRDSCA0
IGFuZCA2Lgo+IC0tLQo+Cj4gR2xlbm4gTGFuZ2Vkb2NrICgxKToKPiAgIGdwaW86IHp5bnE6IHBy
b3RlY3QgZGlyZWN0aW9uIGluL291dCB3aXRoIGEgc3BpbmxvY2sKPgo+IFNodWJocmFqeW90aSBE
YXR0YSAoNik6Cj4gICBkdC1iaW5kaW5nczogZ3BpbzogQWRkIGJpbmRpbmcgZm9yIFZlcnNhbCBn
cGlvCj4gICBkZXZpY2V0cmVlLWJpbmRpbmc6IEFkZCBwbWMgZ3BpbyBub2RlCj4gICBncGlvOiB6
eW5xOiBBZGQgVmVyc2FsIHN1cHBvcnQKPiAgIGdwaW86IHp5bnE6IERpc2FibGUgdGhlIGlycSBp
ZiBpdCBpcyBub3QgYSB3YWtldXAgc291cmNlCj4gICBncGlvOiB6eW5xOiBBZGQgcG1jIGdwaW8g
c3VwcG9ydAo+ICAgZ3BpbzogenlucTogUmVtb3ZlIGVycm9yIHByaW50cyBpbiBFUFJPQkVfREVG
RVIKPgo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2dwaW8tenlucS50eHQgICAgICAg
ICB8ICA0ICstCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLXp5bnEuYyAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgNjYgKysrKysrKysrKysrKysrKysrKysrLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDY3
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuNy40Cj4KCk90aGVyIHRo
YW4gdGhlIGNvbW1pdCBtZXNzYWdlcywgdGhlIHNlcmllcyBsb29rcyBnb29kIHRvIG1lLgoKQmFy
dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
