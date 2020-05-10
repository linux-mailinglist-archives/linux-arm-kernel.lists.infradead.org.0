Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271FA1CCE0A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 22:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e+3023DunzFfVKSEQ7vLJWTY9fZ7Tg/NcDv+YgGL3p0=; b=Qbvs+4rV+U/Mv4W2meQLQmYOT
	5I9Ryiatn3LiLKZdYSs80PvVUvZoEbsHoS30LuTFLAW/hAkg/P3XwXzQFKTYUA5HxiIzZfaUl5y4M
	T1//Uu3uWCXmT7Jf4FqkhgcnrFyiKRaSFakJScQ8teWbJv15uhSXvfuTJnFRzvBsHPpMJ3mPS/MDI
	q1q+H3DV6rQ8Oj06mYqwb0No4hbqi3t283V4uQW7FYqPr/tN3wV0mfQs/ZANmHXY8Gam9YGmTR7fa
	hr79bnGEIvdpiVcIXygLFJxEIq2Aj7ETRiUnnMLC5P/rYipthMaOrvEz6Tesqa5aFeUIyyL7ejlns
	gdc3P6VkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXswN-0007Za-Ua; Sun, 10 May 2020 20:52:51 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXswB-0007Xy-2P; Sun, 10 May 2020 20:52:40 +0000
Received: by mail-ej1-x642.google.com with SMTP id s9so6194596eju.1;
 Sun, 10 May 2020 13:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XN9HVfx2Nq8ELSLfKqyYdBqRcQTahj+sAQBqI9rxLfw=;
 b=l8bxUB+OrW+TcvrPvGlUmvJXPn//BVuK9BnU2b1VBHsgiYWVYgOMxZ0VzOrllgvIn/
 99E02MCrZNtOycINWxbpLqzL1nJh8mgIGGZKezFiejkQ62ae3u6kZ/VBXRwzbbyXJKTs
 wSseBhqSkgQwTG5qaUTYI63lji6hBJU47bfO56CtufPSsTXriT4bBCRlxosqIB27hVf8
 EM4xsKQFqq6jBv1V5qBjWaitxMrVNFR0MIS+cr7T/x4ilLFGZwM0vUsb6+jdaIyMpueQ
 OjLER+XdxGM50xXwbhnnu9XApbJxAifm+KFKEHOqAQwopk50CnoWfOOlEM81B43SwUqo
 BV8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XN9HVfx2Nq8ELSLfKqyYdBqRcQTahj+sAQBqI9rxLfw=;
 b=O3hH9EMAb+x1KzW94s5lrntcFvJrOkRal/HR1c/JjSaK+Y/N35Y35HFyTg8FLhgXMw
 YE+D7xs7IR5/uwZzMcKTMmNCsmmHlF6/c95kQW5EhWe5NN6d2pHjoTMl4BI2XIhOIX7H
 eQQjtYoCih+BhXUPWWK9AM1xNbFSg+kdQ5vtSSwQ0wot5A1t3Eq7+QhQYZTlrmUi6GAJ
 ytUHIihtzsc+nnnTJ7w2MAykT6VFGV/9RyJuFxTxKDvWTtfvE4lY61XMMSpkZWYzPWn/
 gtPRXhEoMiBCI6b+1mE+WRH6mPGhx2Nzsm5SGsfX4q2yTd+HtIKv1vuvJIcPFA85fCpH
 Zdew==
X-Gm-Message-State: AGi0Pua8tgcuacf1HeJzWz4WdjxHpAKcM7MOIeG9JCQ7sdc1XntrobMU
 s1ySkSLXHrZvCe+y8109Sa5j9Sa+9rcjvgc9nTs=
X-Google-Smtp-Source: APiQypIdnABmp04ng7WPsf9YyXLEhUeTIbLwh5QFHCckGD97WlwESUQk7tqPdySBT967r2TZPgbM1PTFvacacdeQ72k=
X-Received: by 2002:a17:906:4048:: with SMTP id
 y8mr10685706ejj.258.1589143956392; 
 Sun, 10 May 2020 13:52:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200428210229.703309-1-martin.blumenstingl@googlemail.com>
 <20200428210229.703309-3-martin.blumenstingl@googlemail.com>
 <1jlfmdi9uw.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFoEh8qKYFONo1SHnvwhDwjUa5bMnnT1Kbu8=4rd=T-8Kg@mail.gmail.com>
 <1jh7x1i3hj.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFq_USCNNps3s4+C_1hriycrxtRMKJvnPFcP59CZmLXbGw@mail.gmail.com>
 <1j1rnygye6.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1j1rnygye6.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 10 May 2020 22:52:25 +0200
Message-ID: <CAFBinCAPGwb4YKJvUSyvzSC7hpVO0z-Ju_pBWx-06QzYXc0orw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
To: Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="00000000000004a71b05a55169bf"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_135239_138546_DFD53883 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: DTML <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Stephen Boyd <sboyd@kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Anand Moon <linux.amoon@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--00000000000004a71b05a55169bf
Content-Type: text/plain; charset="UTF-8"

Hi Jerome,

On Tue, May 5, 2020 at 6:05 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
[...]
> > 2. Keep the existing approach, with devm_clk_get(). I am fine with
> > this as well, we can always switch to 1) later on.
>
> I have a problem with this approach.
> The dt-bindings would include "#clock-cells = <1>" for a device that
> does not actually provide and only needs it has a temporary work around.
> Those bindings are supposed to be stable ...
actually I don't see a problem here because this specific MMC
controller has a clock controller built into it.
Rob also didn't see any problem with this when he reviewed the dt-bindings

> I have proposed 2 other short term solutions, let's see how it goes
since I was also curious how this turns out I first implemented your
suggestion to use a similar clk_hw registration style as
dwmac-meson8b.
That made the code easier to read - thank you for the suggestion!

On top of that I switched from clk_hw_onecell_data to directly
accessing "clk_hw.clk".
Unfortunately the diffstat is not as great as I hoped, it saves 21
lines (11 in the driver code, 6 in the soc.dtsi, 5 in the dt-bindings)
Once devm_clk_hw_get_clk() is implemented 8 lines have to be added
again for error checking.
I attached the patch for the drivers/mmc/host/meson-mx-sdhc* parts if
you are curious (it'll apply only on top of my github branch, not on
this series).

Please let me know if you want me to submit an updated series where I
directly access "clk_hw.clk" to get the "struct clk" or if I should
keep clk_hw_onecell_data.
If it's the former then I'll also add a TODO comment for the
conversion to devm_clk_hw_get_clk() so it's easy to find.


Regards,
Martin

--00000000000004a71b05a55169bf
Content-Type: text/x-patch; charset="US-ASCII"; name="temp.diff"
Content-Disposition: attachment; filename="temp.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_ka1j1f5g0>
X-Attachment-Id: f_ka1j1f5g0

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3QvbWVzb24tbXgtc2RoYy1jbGtjLmMgYi9kcml2
ZXJzL21tYy9ob3N0L21lc29uLW14LXNkaGMtY2xrYy5jCmluZGV4IGEzNjQ4M2Q4NTlmOC4uZDJl
MzY1MTdlMGY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL21tYy9ob3N0L21lc29uLW14LXNkaGMtY2xr
Yy5jCisrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbWVzb24tbXgtc2RoYy1jbGtjLmMKQEAgLTcsNiAr
Nyw3IEBACiAKICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9tZXNvbi1teC1zZGhjLWNsa2Mu
aD4KIAorI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L2Nsay1wcm92aWRl
ci5oPgogI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3Jt
X2RldmljZS5oPgpAQCAtMjIsNyArMjMsNiBAQCBzdHJ1Y3QgbWVzb25fbXhfc2RoY19jbGtjIHsK
IAlzdHJ1Y3QgY2xrX2dhdGUJCQl0eF9jbGtfZW47CiAJc3RydWN0IGNsa19nYXRlCQkJcnhfY2xr
X2VuOwogCXN0cnVjdCBjbGtfZ2F0ZQkJCXNkX2Nsa19lbjsKLQlzdHJ1Y3QgY2xrX2h3X29uZWNl
bGxfZGF0YQlod19vbmVjZWxsX2RhdGE7CiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGNsa19w
YXJlbnRfZGF0YSBtZXNvbl9teF9zZGhjX3NyY19zZWxfcGFyZW50c1s0XSA9IHsKQEAgLTgzLDE3
ICs4MywxNCBAQCBzdGF0aWMgaW50IG1lc29uX214X3NkaGNfZ2F0ZV9jbGtfaHdfcmVnaXN0ZXIo
c3RydWN0IGRldmljZSAqZGV2LAogCQkJCQkgICAgICZjbGtfZ2F0ZV9vcHMsIGh3KTsKIH0KIAot
aW50IG1lc29uX214X3NkaGNfcmVnaXN0ZXJfY2xrYyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQg
X19pb21lbSAqYmFzZSkKK2ludCBtZXNvbl9teF9zZGhjX3JlZ2lzdGVyX2Nsa2Moc3RydWN0IGRl
dmljZSAqZGV2LCB2b2lkIF9faW9tZW0gKmJhc2UsCisJCQkJc3RydWN0IGNsa19idWxrX2RhdGEg
KmNsa19idWxrX2RhdGEpCiB7CiAJc3RydWN0IGNsa19wYXJlbnRfZGF0YSBkaXZfcGFyZW50ID0g
eyAwIH07Ci0Jc3RydWN0IGNsa19od19vbmVjZWxsX2RhdGEgKm9uZWNlbGxfZGF0YTsKIAlzdHJ1
Y3QgbWVzb25fbXhfc2RoY19jbGtjICpjbGtjX2RhdGE7CiAJaW50IHJldDsKIAotCWNsa2NfZGF0
YSA9IGRldm1fa3phbGxvYyhkZXYsIHN0cnVjdF9zaXplKGNsa2NfZGF0YSwKLQkJCQkJCSAgaHdf
b25lY2VsbF9kYXRhLmh3cywKLQkJCQkJCSAgTUVTT05fU0RIQ19OVU1fQlVJTFRJTl9DTEtTKSwK
LQkJCQkgR0ZQX0tFUk5FTCk7CisJY2xrY19kYXRhID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9m
KCpjbGtjX2RhdGEpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIWNsa2NfZGF0YSkKIAkJcmV0dXJuIC1F
Tk9NRU07CiAKQEAgLTE1MCwxNiArMTQ3LDE0IEBAIGludCBtZXNvbl9teF9zZGhjX3JlZ2lzdGVy
X2Nsa2Moc3RydWN0IGRldmljZSAqZGV2LCB2b2lkIF9faW9tZW0gKmJhc2UpCiAJaWYgKHJldCkK
IAkJcmV0dXJuIHJldDsKIAotCW9uZWNlbGxfZGF0YSA9ICZjbGtjX2RhdGEtPmh3X29uZWNlbGxf
ZGF0YTsKLQlvbmVjZWxsX2RhdGEtPmh3c1tTREhDX0NMS0lEX1NSQ19TRUxdID0gJmNsa2NfZGF0
YS0+c3JjX3NlbC5odzsKLQlvbmVjZWxsX2RhdGEtPmh3c1tTREhDX0NMS0lEX0RJVl0gPSAmY2xr
Y19kYXRhLT5kaXYuaHc7Ci0Jb25lY2VsbF9kYXRhLT5od3NbU0RIQ19DTEtJRF9NT0RfQ0xLXSA9
ICZjbGtjX2RhdGEtPm1vZF9jbGtfZW4uaHc7Ci0Jb25lY2VsbF9kYXRhLT5od3NbU0RIQ19DTEtJ
RF9TRF9DTEtdID0gJmNsa2NfZGF0YS0+c2RfY2xrX2VuLmh3OwotCW9uZWNlbGxfZGF0YS0+aHdz
W1NESENfQ0xLSURfVFhfQ0xLXSA9ICZjbGtjX2RhdGEtPnR4X2Nsa19lbi5odzsKLQlvbmVjZWxs
X2RhdGEtPmh3c1tTREhDX0NMS0lEX1JYX0NMS10gPSAmY2xrY19kYXRhLT5yeF9jbGtfZW4uaHc7
CisJLyoKKwkgKiBUT0RPOiBSZXBsYWNlIGNsa19ody5jbGsgd2l0aCBkZXZtX2Nsa19od19nZXRf
Y2xrKCkgb25jZSB0aGF0IGlzCisJICogYXZhaWxhYmxlLgorCSAqLworCWNsa19idWxrX2RhdGFb
MF0uY2xrID0gY2xrY19kYXRhLT5tb2RfY2xrX2VuLmh3LmNsazsKKwljbGtfYnVsa19kYXRhWzFd
LmNsayA9IGNsa2NfZGF0YS0+c2RfY2xrX2VuLmh3LmNsazsKKwljbGtfYnVsa19kYXRhWzJdLmNs
ayA9IGNsa2NfZGF0YS0+dHhfY2xrX2VuLmh3LmNsazsKKwljbGtfYnVsa19kYXRhWzNdLmNsayA9
IGNsa2NfZGF0YS0+cnhfY2xrX2VuLmh3LmNsazsKIAotCW9uZWNlbGxfZGF0YS0+bnVtID0gTUVT
T05fU0RIQ19OVU1fQlVJTFRJTl9DTEtTOwotCi0JcmV0dXJuIGRldm1fb2ZfY2xrX2FkZF9od19w
cm92aWRlcihkZXYsIG9mX2Nsa19od19vbmVjZWxsX2dldCwKLQkJCQkJICAgb25lY2VsbF9kYXRh
KTsKKwlyZXR1cm4gMDsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3QvbWVzb24tbXgt
c2RoYy5jIGIvZHJpdmVycy9tbWMvaG9zdC9tZXNvbi1teC1zZGhjLmMKaW5kZXggM2M1NGQ1Zjkx
ZmJjLi4zMjI1NzA1NzBjOTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvbWVzb24tbXgt
c2RoYy5jCisrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbWVzb24tbXgtc2RoYy5jCkBAIC04MDMsMTYg
KzgwMyw3IEBAIHN0YXRpYyBpbnQgbWVzb25fbXhfc2RoY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQogCiAJbWVzb25fbXhfc2RoY19pbml0X2h3KG1tYyk7CiAKLQlyZXQgPSBt
ZXNvbl9teF9zZGhjX3JlZ2lzdGVyX2Nsa2MoZGV2LCBiYXNlKTsKLQlpZiAocmV0KQotCQlnb3Rv
IGVycl9kaXNhYmxlX3BjbGs7Ci0KLQlob3N0LT5idWxrX2Nsa3NbMF0uaWQgPSAibW9kX2NsayI7
Ci0JaG9zdC0+YnVsa19jbGtzWzFdLmlkID0gInNkX2NsayI7Ci0JaG9zdC0+YnVsa19jbGtzWzJd
LmlkID0gInR4X2NsayI7Ci0JaG9zdC0+YnVsa19jbGtzWzNdLmlkID0gInJ4X2NsayI7Ci0JcmV0
ID0gZGV2bV9jbGtfYnVsa19nZXQoZGV2LCBNRVNPTl9TREhDX05VTV9CVUxLX0NMS1MsCi0JCQkJ
aG9zdC0+YnVsa19jbGtzKTsKKwlyZXQgPSBtZXNvbl9teF9zZGhjX3JlZ2lzdGVyX2Nsa2MoZGV2
LCBiYXNlLCBob3N0LT5idWxrX2Nsa3MpOwogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2Rpc2FibGVf
cGNsazsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9tZXNvbi1teC1zZGhjLmggYi9k
cml2ZXJzL21tYy9ob3N0L21lc29uLW14LXNkaGMuaAppbmRleCAyYWExZTQ0MDExNzMuLjIzMGU4
ZmJlNmIzZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9tZXNvbi1teC1zZGhjLmgKKysr
IGIvZHJpdmVycy9tbWMvaG9zdC9tZXNvbi1teC1zZGhjLmgKQEAgLTEzMyw2ICsxMzMsOSBAQAog
CSNkZWZpbmUgTUVTT05fU0RIQ19DTEsyX1JYX0NMS19QSEFTRQkJCUdFTk1BU0soMTEsIDApCiAJ
I2RlZmluZSBNRVNPTl9TREhDX0NMSzJfU0RfQ0xLX1BIQVNFCQkJR0VOTUFTSygyMywgMTIpCiAK
LWludCBtZXNvbl9teF9zZGhjX3JlZ2lzdGVyX2Nsa2Moc3RydWN0IGRldmljZSAqZGV2LCB2b2lk
IF9faW9tZW0gKmJhc2UpOworc3RydWN0IGNsa19idWxrX2RhdGE7CisKK2ludCBtZXNvbl9teF9z
ZGhjX3JlZ2lzdGVyX2Nsa2Moc3RydWN0IGRldmljZSAqZGV2LCB2b2lkIF9faW9tZW0gKmJhc2Us
CisJCQkJc3RydWN0IGNsa19idWxrX2RhdGEgKmNsa19idWxrX2RhdGEpOwogCiAjZW5kaWYgLyog
X01FU09OX01YX1NESENfSF8gKi8K
--00000000000004a71b05a55169bf
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--00000000000004a71b05a55169bf--

