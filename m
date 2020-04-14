Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BD41A81DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dME9OyMl1x79D2K2xzyBj12F7oXmqfgR8kMdJUYPug0=; b=aUpDW31XZSvyb4
	3FXRYywwcS2n85EB1fYX8TP9nElIwFwQemNDNwxmbRBlfeoQrFl17H0OumwOZFbmXH0Wu44umIxnV
	5esMOp7XbuNSPd8Id1FSdY9EZlTyPNPWeMoyqFXDxerVcEiKRB++I758oijnf+aH71gYZdQqGsZO0
	jyjhgknjiyiTB2AF1JQGUzykaIukq8bABeCBE1qjF5FiAALpOQYHDqzBxxqgO6Ge5+Hs/Naub8KwM
	06lMrm6jIK34FplLVe+iDjoRmT+/PWvu9Wmf9sQfr3j1EXsAyOCqQwJFPtiDYLoRZEEEmAmyO1H42
	1vmjm2RHg2X5GbG151Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONKm-00027L-BO; Tue, 14 Apr 2020 15:18:44 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONKc-00026z-0K
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:18:35 +0000
Received: by mail-lf1-x143.google.com with SMTP id k28so14387lfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EaqdjDcz077guZZFx5utO0urvqfVvTtoCeZlyZLJ4kY=;
 b=YIhYIz+CpSklWfCMJiTQBwpRgBV0ctYIjrrVfeiHT9KHQexJd3U4HTtPCr4YalaSor
 Nb/P9+fWUhEsKtY7TsxML4gIPd5EAK5Ea/FBa2dXkvA/Ka/S2TcspycJTVowoi8l/lvV
 bK0PHJg39vlv9KuSwx8jW5cpVUz2xh6WeiWBTOgDFSmo5jjUx8+nRixvPGoTu/sRCl53
 xYmnFJQ/Dj6jC6TBu2wwg9vVcia08ijGsDcewfTfwArjgo7QZT4pzKdYLV5PCAdO/Dvg
 fh12n66uiF5FpV8ODdEGvsRqDELFXYsEYpdgoT76TZ+yn5bYItrrl54uRhcevznrgAQW
 Pd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EaqdjDcz077guZZFx5utO0urvqfVvTtoCeZlyZLJ4kY=;
 b=Bz/6P4rod3X0ZiTAHDI6idJQv4yuZS+7d+37lkl+JjV4uXPHJu2oh3Lr2TRrS4SO80
 o0Dvy9xdZW6Ck+5px0WmsiK51/dQzh4AJR5NhpeNeIXPs6j1FcIAY0XHdtsuZ+1jh+Q0
 97Y1GxG8blnpx3HLjVd5sqS5pJo07Tq+d1Rc2Y7Luc0Id2HRQLuSpKpBeAvjlhmj6121
 C+1NW0cePtE5zNgazuGzXURSMiRV9ht5l7sl4Hg6dgya21MIiilMYTN+XQ8tFFvxgrF9
 TRlg8c179hzyN1PK8sf+R8I7yMNB81aSNCm977/xyY2fRvP32wXeyLJACmFYaghtMtCP
 +0aw==
X-Gm-Message-State: AGi0PuY1crTeedGj/VDw1T3cDgR53Pze2X8Jo79zxGwZLSv87xR7Eftd
 OvObBs6A5i9XgNOfZ9CkhpO+yWfk
X-Google-Smtp-Source: APiQypLUTnN9jhL1/kjbd/qXnyU7SH/YSbBa5XG5eUCrFPojjrbpHlIpRKG9PuFRu/KbkQRc6zRgEg==
X-Received: by 2002:a19:c14e:: with SMTP id r75mr221935lff.62.1586877510987;
 Tue, 14 Apr 2020 08:18:30 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id j14sm9865266lfm.73.2020.04.14.08.18.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 08:18:30 -0700 (PDT)
Subject: Re: [PATCH v6 07/14] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-8-thierry.reding@gmail.com>
 <8dc000fb-8867-cf8f-8204-a9e1e79a4811@gmail.com>
 <20200414143424.GG3593749@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <92eb73ba-73e4-f9f1-bb22-9b515e32cee6@gmail.com>
Date: Tue, 14 Apr 2020 18:18:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414143424.GG3593749@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_081834_046203_119542F2 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTQuMDQuMjAyMCAxNzozNCwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBPbiBUaHUsIEFw
ciAwOSwgMjAyMCBhdCAwOToyNDozMVBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+
IDA5LjA0LjIwMjAgMjA6NTIsIFRoaWVycnkgUmVkaW5nINC/0LjRiNC10YI6Cj4+IC4uLgo+Pj4g
K3N0YXRpYyBsb25nIHRlZ3JhMjEwX2Nsa19lbWNfcm91bmRfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpo
dywgdW5zaWduZWQgbG9uZyByYXRlLAo+Pj4gKwkJCQkJdW5zaWduZWQgbG9uZyAqcHJhdGUpCj4+
PiArewo+Pj4gKwlzdHJ1Y3QgdGVncmEyMTBfY2xrX2VtYyAqZW1jID0gdG9fdGVncmEyMTBfY2xr
X2VtYyhodyk7Cj4+PiArCXN0cnVjdCB0ZWdyYTIxMF9jbGtfZW1jX3Byb3ZpZGVyICpwcm92aWRl
ciA9IGVtYy0+cHJvdmlkZXI7Cj4+PiArCXVuc2lnbmVkIGludCBpOwo+Pj4gKwo+Pj4gKwlpZiAo
IXByb3ZpZGVyIHx8ICFwcm92aWRlci0+Y29uZmlncyB8fCBwcm92aWRlci0+bnVtX2NvbmZpZ3Mg
PT0gMCkKPj4+ICsJCXJldHVybiBjbGtfaHdfZ2V0X3JhdGUoaHcpOwo+Pgo+PiBUaGlzIHN0aWxs
IGxvb2tzIHdyb25nIHRvIG1lLiBOb2JvZHkgc2hvdWxkIGJlIGFibGUgdG8gZ2V0IEVNQyBjbG9j
awo+PiB1bnRpbCBwcm92aWRlciBpcyByZWdpc3RlcmVkLgo+IAo+IFRoZSBFTUMgY2xvY2sgaXMg
bW9zdGx5IG9ydGhvZ29uYWwgdG8gdGhlIHByb3ZpZGVyLiBUaGUgcHJvdmlkZXIgcmVhbGx5Cj4g
b25seSBhbGxvd3MgeW91IHRvIGFjdHVhbGx5IGNoYW5nZSB0aGUgZnJlcXVlbmN5LiBUaGUgY2xv
Y2sgd2lsbCBzdGlsbAo+IHJlbWFpbiBldmVuIGlmIHRoZSBwcm92aWRlciBnb2VzIGF3YXksIGl0
IGp1c3Qgd2lsbCBsb29zZSB0aGUgYWJpbGl0eSB0bwo+IGNoYW5nZSByYXRlLgoKSXQncyBub3Qg
b25seSBhYm91dCBjaGFuZ2luZyB0aGUgY2xvY2sgcmF0ZSwgYnV0IGFsc28gYWJvdXQgcm91bmRp
bmcgdGhlCnJhdGUgYW5kIGV0Yy4KCkJlc2lkZXMsIHlvdSB3b24ndCBiZSBhYmxlIHRvIGNoYW5n
ZSB0aGUgcmF0ZSB1bnRpbCBwcm92aWRlciBpcwpyZWdpc3RlcmVkLCB3aGljaCBtaWdodCBiZSBh
IHF1aXRlIGJpZyBwcm9ibGVtIGJ5IGl0c2VsZi4KCj4+IFRoaXMgaXMgdHJvdWJsZXNvbWUsIGVz
cGVjaWFsbHkgZ2l2ZW4gdGhhdCB5b3UncmUgYWxsb3dpbmcgdGhlIEVNQwo+PiBkcml2ZXIgdG8g
YmUgY29tcGlsZWQgYXMgYSBsb2FkYWJsZSBtb2R1bGUuIEZvciBleGFtcGxlLCB0aGlzIHdvbid0
IHdvcmsKPj4gd2l0aCB0aGUgY3VycmVudCBBQ1RNT04gZHJpdmVyIGJlY2F1c2UgaXQgYnVpbGRz
IE9QUCB0YWJsZSBiYXNlZCBvbiB0aGUKPj4gY2xrLXJhdGUgcm91bmRpbmcgZHVyaW5nIHRoZSBk
cml2ZXIncyBwcm9iZSwgc28gaXQgd29uJ3QgYmUgYWJsZSB0byBkbwo+PiBpdCBwcm9wZXJseSBp
ZiBwcm92aWRlciBpcyAidGVtcG9yYXJpbHkiIG1pc3NpbmcuCj4+Cj4+IC4uLiBJIHRoaW5rIHRo
YXQgaW4gYSBsb25nZXIgcnVuIHdlIHNob3VsZCBzdG9wIG1hbnVhbGx5IGJ1aWxkaW5nIHRoZQo+
PiBBQ1RNT04ncyBPUFAgdGFibGUgYW5kIGluc3RlYWQgZGVmaW5lIGEgcHJvcGVyIE9QUCB0YWJs
ZSAocGVyLUhXIFNwZWVkbwo+PiBJRCwgd2l0aCB2b2x0YWdlcykgaW4gYSBkZXZpY2UtdHJlZS4g
QnV0IHRoaXMgaXMganVzdCBhIHZhZ3VlIHBsYW5zIGZvcgo+PiB0aGUgZnV0dXJlIGZvciBub3cu
Cj4gCj4gVGhpcyBjb2RlIG9ubHkgYXBwbGllcyB0byBUZWdyYTIxMCBhbmQgd2UgZG9uJ3QgY3Vy
cmVudGx5IHN1cHBvcnQgQUNUTU9OCj4gb24gVGVncmEyMTAuIEknbSBhbHNvIG5vdCBzdXJlIHdl
J2xsIGV2ZXIgZG8gYmVjYXVzZSB1c2luZyBpbnRlcmNvbm5lY3RzCj4gdG8gZGVzY3JpYmUgcGF0
aHMgdG8gc3lzdGVtIG1lbW9yeSBhbmQgdGhlbiB1c2luZyBJQ0MgcmVxdWVzdHMgZm9yIGVhY2gK
PiBkcml2ZXIgdG8gc3VibWl0IG1lbW9yeSBiYW5kd2lkdGggcmVxdWVzdHMgc2VlbXMgbGlrZSBh
IGJldHRlciB3YXkgb2YKPiBkZWFsaW5nIHdpdGggdGhpcyBwcm9ibGVtIHRoYW4gdXNpbmcgQUNU
TU9OIHRvIG1vbml0b3IgYWN0aXZpdHkgYmVjYXVzZQo+IHRoYXQgb25seSBhbGxvd3MgeW91IHRv
IHJlYWN0LCB3aGVyZWFzIHdlIHJlYWxseSB3YW50IHRvIGJlIGFibGUgdG8KPiBhbGxvY2F0ZSBt
ZW1vcnkgYmFuZHdpZHRoIHVwZnJvbnQuCgpZb3UgYWJzb2x1dGVseSBoYXZlIHRvIGhhdmUgdGhl
IEFDVE1PTiBzdXBwb3J0IGlmIHlvdSB3YW50IHRvIHByb3ZpZGUgYQpnb29kIHVzZXIgZXhwZXJp
ZW5jZSBiZWNhdXNlIGludGVyY29ubmVjdCB3b24ndCB0YWtlIGludG8gYWNjb3VudCB0aGUKZHlu
YW1pYyBDUFUgbWVtb3J5IHRyYWZmaWMuIFdpdGhvdXQgQUNUTU9OIHN1cHBvcnQgQ1BVIHdpbGwg
dHVybiBpbnRvIGEKInR1cnRsZSIgaWYgbWVtb3J5IHJ1bnMgb24gYSBsb3dlc3QgZnJlcSwgd2hp
bGUgQ1BVIG5lZWRzIHRoZSBoaWdoZXN0LgoKU2Vjb25kbHksIHRoZSBpbnRlcmNvbm5lY3QgY291
bGQgdW5kZXJlc3RpbWF0ZSB0aGUgbWVtb3J5IEJXIHJlcXVpcmVtZW50CmJlY2F1c2UgbWVtb3J5
IHBlcmZvcm1hbmNlIGRlcGVuZHMgcXVpdGUgYSBsb3Qgb24gdGhlIG1lbW9yeS1hY2Nlc3NpbmcK
cGF0dGVybnMgYW5kIGl0J3Mgbm90IHBvc3NpYmxlIHRvIHByZWRpY3QgaXQgcHJvcGVybHkuIE90
aGVyd2lzZSB5b3UgbWF5Cm5lZWQgdG8gYWx3YXlzIG92ZXJlc3RpbWF0ZSB0aGUgQlcsIHdoaWNo
IHBlcmhhcHMgaXMgbm90IHdoYXQgYW55b25lCndvdWxkIHJlYWxseSB3YW50IHRvIGhhdmUuCgpJ
J20gbm90IHN1cmUgd2h5IHlvdSdyZSByZXNpc3RpbmcgdG8gZG8gaXQgYWxsIHByb3Blcmx5IGZy
b20gdGhlIHN0YXJ0LAppdCBsb29rcyB0byBtZSB0aGF0IGl0IHdpbGwgdGFrZSB5b3UganVzdCBh
IGZldyBsaW5lcyBvZiBjb2RlIChsaWtlIGluIGEKY2FzZSBvZiB0aGUgVDIwLzMwIEVNQykuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
