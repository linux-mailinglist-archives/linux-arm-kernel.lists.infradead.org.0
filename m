Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFA919EBDD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 16:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mMS4EBx+EV+git+ZYo7ILS1IVfBqZjT++yXsCyQVNU=; b=HnJfLn7veg5KlB
	WmpWRfV9L6qIFTBxQbwSwD5vO6fJ4ChgH7ZIenX/y1JplY5QXZlx139Je3356fCCz+0W+JRqYmeUg
	bztxb4yJ+Pqa0IlznYq/tnIy2UDaAan+hK5I/Zc2fJvKnxaEW/lykFLleOgWNmlFNuCxj4UPFHDsj
	t3mCxpTv/IF1GiGSUu7EuPqbpkyBNrk6O4yCAgycsA4m60FEsbnseVt9mkUaZl1MDeiRC/Di5ue45
	fgyEJYBtGt305taBebghgn0YZl7O3PLnWjLF2VxzJUbBLJzltnvW2gFV60otRM2h3nfwJoZGWji8A
	bx16gdHddOuWojvfXnjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL5tx-0002ux-7P; Sun, 05 Apr 2020 14:05:29 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL5tq-0002uD-PV
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 14:05:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id s13so9574843lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 07:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HogDBcooWi67XENOKHci5+dOZCCQV64k3pTiHWgv4s4=;
 b=rBaEBSkXK2C0yzndQ/RkDwHj0w17BJXrPk7f9u7teTV8P9IxLUVusf3MKIvc4yffff
 Yp8Cpb3XQoNRyLBWUd2Cd7nJAmpHo6S2cmHSanRKQuITwv2z21ePnlDUNkIwkgTX1i4b
 2b2hc/0oVkEq6Q/e6S/1eW4jWOR2sSWa6ETRpFJgiSyBZ9wFqfWxgz9m9JutlfOFQN3J
 9kOG+onl1TMLjo1attSQqqadWl5xzuog8qJNOfcpGDTqTbgXykfUBXmW/KFEtZBhN2D5
 JO+FVp4R1fbWK6EjdVZmpfDN0wT+15Cuvh2HkfxPT+Gi+KckM4yugfn3CPwbKCbdHzvT
 kyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HogDBcooWi67XENOKHci5+dOZCCQV64k3pTiHWgv4s4=;
 b=oGSE3nqJAq35J53mM+yy3yOIsmT1keswT70SOcvsUWX7eLC1P5WVQDbN0tcwDQxahy
 8fH87xtZQUuIywfjG3nNrCnZ5ezdYXfMW/XSdx4D/qbD19eWdrwRAWO1ieHxSEw1FwBi
 +4Vg2iwxqrMQZZ74rBljN2LsI3Epstx609NQ8CbKsWAOn5vhh5dccI1q/iBDxYTTNweC
 OjtHFve5lEQxFp4BILyYgnotPYwTUMOxzXSlOKURqnTvBHZ+cvEMImmamLMitpPDIal5
 thos68PPsO+IHO0KaKfnYdAlkez2TgmY6ys1hFeVky7au1LmzXLY53pqd5vS6rWgXOmt
 g3Kw==
X-Gm-Message-State: AGi0PuZwpYnhjh8zfGI9FgYxsBAKfEJSJqvJr3fmtAwA29Q5vMbQNA7T
 IJOpNfqOe50kszEi+P7tRcY=
X-Google-Smtp-Source: APiQypILiNlHrBcNHoxP8124hD18AOTk35fqkGU+DQleRMILHJTfrkd1aUr9wRQOkM31pqNtx2BDfQ==
X-Received: by 2002:ac2:5185:: with SMTP id u5mr3629194lfi.64.1586095516549;
 Sun, 05 Apr 2020 07:05:16 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id k3sm8527148lji.43.2020.04.05.07.05.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Apr 2020 07:05:15 -0700 (PDT)
Subject: Re: [TEGRA194_CPUFREQ Patch v2 2/3] cpufreq: Add Tegra194 cpufreq
 driver
To: Sumit Gupta <sumitg@nvidia.com>, rjw@rjwysocki.net,
 viresh.kumar@linaro.org, catalin.marinas@arm.com, will@kernel.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, talho@nvidia.com,
 linux-pm@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
 <1586028547-14993-3-git-send-email-sumitg@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <67f9feb1-ba51-f1ac-b6eb-4587924d0748@gmail.com>
Date: Sun, 5 Apr 2020 17:05:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1586028547-14993-3-git-send-email-sumitg@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_070522_829319_BBB448F1 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bbasu@nvidia.com, mperttunen@nvidia.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDQuMDQuMjAyMCAyMjoyOSwgU3VtaXQgR3VwdGEg0L/QuNGI0LXRgjoKLi4uCj4gK3N0YXRpYyB2
b2lkIHRlZ3JhX3JlYWRfY291bnRlcnMoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICt7Cj4g
KwlzdHJ1Y3QgcmVhZF9jb3VudGVyc193b3JrICpyZWFkX2NvdW50ZXJzX3dvcms7Cj4gKwlzdHJ1
Y3QgdGVncmFfY3B1X2N0ciAqYzsKPiArCXU2NCB2YWw7Cj4gKwo+ICsJLyoKPiArCSAqIHJlZl9j
bGtfY291bnRlcigzMiBiaXQgY291bnRlcikgcnVucyBvbiBjb25zdGFudCBjbGssCj4gKwkgKiBw
bGxfcCg0MDhNSHopLgo+ICsJICogSXQgd2lsbCB0YWtlID0gMiBeIDMyIC8gNDA4IE1IeiB0byBv
dmVyZmxvdyByZWYgY2xrIGNvdW50ZXIKPiArCSAqICAgICAgICAgICAgICA9IDEwNTI2ODgwIHVz
ZWMgPSAxMC41Mjcgc2VjIHRvIG92ZXJmbG93Cj4gKwkgKgo+ICsJICogTGlrZSB3aXNlIGNvcmVf
Y2xrX2NvdW50ZXIoMzIgYml0IGNvdW50ZXIpIHJ1bnMgb24gY29yZSBjbG9jay4KPiArCSAqIEl0
J3Mgc3luY2hyb25pemVkIHRvIGNyYWJfY2xrIChjcHVfY3JhYl9jbGspIHdoaWNoIHJ1bnMgYXQK
PiArCSAqIGZyZXEgb2YgY2x1c3Rlci4gQXNzdW1pbmcgbWF4IGNsdXN0ZXIgY2xvY2sgfjIwMDBN
SHosCj4gKwkgKiBJdCB3aWxsIHRha2UgPSAyIF4gMzIgLyAyMDAwIE1IeiB0byBvdmVyZmxvdyBj
b3JlIGNsayBjb3VudGVyCj4gKwkgKiAgICAgICAgICAgICAgPSB+Mi4xNDcgc2VjIHRvIG92ZXJm
bG93Cj4gKwkgKi8KPiArCXJlYWRfY291bnRlcnNfd29yayA9IGNvbnRhaW5lcl9vZih3b3JrLCBz
dHJ1Y3QgcmVhZF9jb3VudGVyc193b3JrLAo+ICsJCQkJCSAgd29yayk7Cj4gKwljID0gJnJlYWRf
Y291bnRlcnNfd29yay0+YzsKPiArCj4gKwl2YWwgPSByZWFkX2ZyZXFfZmVlZGJhY2soKTsKPiAr
CWMtPmxhc3RfcmVmY2xrX2NudCA9IGxvd2VyXzMyX2JpdHModmFsKTsKPiArCWMtPmxhc3RfY29y
ZWNsa19jbnQgPSB1cHBlcl8zMl9iaXRzKHZhbCk7Cj4gKwl1ZGVsYXkoYy0+ZGVsYXkpOwo+ICsJ
dmFsID0gcmVhZF9mcmVxX2ZlZWRiYWNrKCk7Cj4gKwljLT5yZWZjbGtfY250ID0gbG93ZXJfMzJf
Yml0cyh2YWwpOwo+ICsJYy0+Y29yZWNsa19jbnQgPSB1cHBlcl8zMl9iaXRzKHZhbCk7Cj4gK30K
PiArCj4gKy8qCj4gKyAqIFJldHVybiBpbnN0YW50YW5lb3VzIGNwdSBzcGVlZAo+ICsgKiBJbnN0
YW50YW5lb3VzIGZyZXEgaXMgY2FsY3VsYXRlZCBhcyAtCj4gKyAqIC1UYWtlcyBzYW1wbGUgb24g
ZXZlcnkgcXVlcnkgb2YgZ2V0dGluZyB0aGUgZnJlcS4KPiArICoJLSBSZWFkIGNvcmUgYW5kIHJl
ZiBjbG9jayBjb3VudGVyczsKPiArICoJLSBEZWxheSBmb3IgWCB1cwo+ICsgKgktIFJlYWQgYWJv
dmUgY3ljbGUgY291bnRlcnMgYWdhaW4KPiArICoJLSBDYWxjdWxhdGVzIGZyZXEgYnkgc3VidHJh
Y3RpbmcgY3VycmVudCBhbmQgcHJldmlvdXMgY291bnRlcnMKPiArICoJICBkaXZpZGVkIGJ5IHRo
ZSBkZWxheSB0aW1lIG9yIGVxdi4gb2YgcmVmX2Nsa19jb3VudGVyIGluIGRlbHRhIHRpbWUKPiAr
ICoJLSBSZXR1cm4gS2N5Y2xlcy9zZWNvbmQsIGZyZXEgaW4gS0h6Cj4gKyAqCj4gKyAqCWRlbHRh
IHRpbWUgcGVyaW9kID0geCBzZWMKPiArICoJCQkgID0gZGVsdGEgcmVmX2Nsa19jb3VudGVyIC8g
KDQwOCAqIDEwXjYpIHNlYwo+ICsgKglmcmVxIGluIEh6ID0gY3ljbGVzL3NlYwo+ICsgKgkJICAg
PSAoZGVsdGEgY3ljbGVzIC8geCBzZWMKPiArICoJCSAgID0gKGRlbHRhIGN5Y2xlcyAqIDQwOCAq
IDEwXjYpIC8gZGVsdGEgcmVmX2Nsa19jb3VudGVyCj4gKyAqCWluIEtIegkgICA9IChkZWx0YSBj
eWNsZXMgKiA0MDggKiAxMF4zKSAvIGRlbHRhIHJlZl9jbGtfY291bnRlcgo+ICsgKgo+ICsgKiBA
Y3B1IC0gbG9naWNhbCBjcHUgd2hvc2UgZnJlcSB0byBiZSB1cGRhdGVkCgoKPiArICogUmV0dXJu
cyBmcmVxIGluIEtIeiBvbiBzdWNjZXNzLCAwIGlmIGNwdSBpcyBvZmZsaW5lCgpJIGRvbid0IHNl
ZSBhbnkgY2hlY2tzIGluIHRoZSBjb2RlIGFib3V0IHdoZXRoZXIgQ1BVIGlzIG9mZmxpbmUuCgpH
b29nbGluZyBmb3IgInF1ZXVlX3dvcmtfb24gb2ZmbGluZSBjcHUiIHN1Z2dlc3RzIHRoYXQgdGhp
cyBmdW5jdGlvbgpzaG91bGQgaGFuZy4KCj4gKyAqLwo+ICtzdGF0aWMgdW5zaWduZWQgaW50IHRl
Z3JhMTk0X2dldF9zcGVlZF9jb21tb24odTMyIGNwdSwgdTMyIGRlbGF5KQo+ICt7Cj4gKwlzdHJ1
Y3QgcmVhZF9jb3VudGVyc193b3JrIHJlYWRfY291bnRlcnNfd29yazsKPiArCXN0cnVjdCB0ZWdy
YV9jcHVfY3RyIGM7Cj4gKwl1MzIgZGVsdGFfcmVmY250Owo+ICsJdTMyIGRlbHRhX2NjbnQ7Cj4g
Kwl1MzIgcmF0ZV9taHo7Cj4gKwo+ICsJcmVhZF9jb3VudGVyc193b3JrLmMuY3B1ID0gY3B1Owo+
ICsJcmVhZF9jb3VudGVyc193b3JrLmMuZGVsYXkgPSBkZWxheTsKPiArCUlOSVRfV09SS19PTlNU
QUNLKCZyZWFkX2NvdW50ZXJzX3dvcmsud29yaywgdGVncmFfcmVhZF9jb3VudGVycyk7Cj4gKwlx
dWV1ZV93b3JrX29uKGNwdSwgcmVhZF9jb3VudGVyc193cSwgJnJlYWRfY291bnRlcnNfd29yay53
b3JrKTsKPiArCWZsdXNoX3dvcmsoJnJlYWRfY291bnRlcnNfd29yay53b3JrKTsKPiArCWMgPSBy
ZWFkX2NvdW50ZXJzX3dvcmsuYzsKPiArCj4gKwlpZiAoYy5jb3JlY2xrX2NudCA8IGMubGFzdF9j
b3JlY2xrX2NudCkKPiArCQlkZWx0YV9jY250ID0gYy5jb3JlY2xrX2NudCArIChNQVhfQ05UIC0g
Yy5sYXN0X2NvcmVjbGtfY250KTsKPiArCWVsc2UKPiArCQlkZWx0YV9jY250ID0gYy5jb3JlY2xr
X2NudCAtIGMubGFzdF9jb3JlY2xrX2NudDsKPiArCWlmICghZGVsdGFfY2NudCkKPiArCQlyZXR1
cm4gMDsKPiArCj4gKwkvKiByZWYgY2xvY2sgaXMgMzIgYml0cyAqLwo+ICsJaWYgKGMucmVmY2xr
X2NudCA8IGMubGFzdF9yZWZjbGtfY250KQo+ICsJCWRlbHRhX3JlZmNudCA9IGMucmVmY2xrX2Nu
dCArIChNQVhfQ05UIC0gYy5sYXN0X3JlZmNsa19jbnQpOwo+ICsJZWxzZQo+ICsJCWRlbHRhX3Jl
ZmNudCA9IGMucmVmY2xrX2NudCAtIGMubGFzdF9yZWZjbGtfY250Owo+ICsJaWYgKCFkZWx0YV9y
ZWZjbnQpIHsKPiArCQlwcl9kZWJ1ZygiY3B1ZnJlcTogJWQgaXMgaWRsZSwgZGVsdGFfcmVmY250
OiAwXG4iLCBjcHUpOwo+ICsJCXJldHVybiAwOwo+ICsJfQo+ICsJcmF0ZV9taHogPSAoKHVuc2ln
bmVkIGxvbmcpKGRlbHRhX2NjbnQgKiBSRUZfQ0xLX01IWikpIC8gZGVsdGFfcmVmY250Owo+ICsK
PiArCXJldHVybiAocmF0ZV9taHogKiBLSFopOyAvKiBpbiBLSHogKi8KPiArfQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
