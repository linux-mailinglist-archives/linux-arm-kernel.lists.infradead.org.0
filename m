Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E351A8CCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqwlB/+AsgkEPn9WQO4eEANMu0uEYtW5ZLDH2JQz7nM=; b=YXUy/n8L9VNp2D
	aI7xpoOERpDhkAd9cGIuoovt27+obd8G3vW8A4jYxOXRnj1Sra+YPmramZknLRJExUa0KUyVOgUWT
	MEw/0EvA43rRluyFZkbU1F5tN4UWZTDBVJd5fk26ldIrgz+Oz7DZkNUrfLf68FxATx5cD7VDINiUf
	EryICSGE1k78l+KPSqIAqK+24uiiia9+O88v5XHtlNzjoN3UxJF70jkK/lW9qvrYpdbIJ79+yo+sd
	thY0KevzV7+tDLTQlwWF+faM43Tmw6c97UfwF6+OBg56V0ONEecvfX4xpdAI58eK0HlpHiJ180+JB
	gVkFP9HwEtVrq61RZQ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSRz-0005A7-Lf; Tue, 14 Apr 2020 20:46:31 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOSRq-00059X-4u
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 20:46:23 +0000
Received: by mail-lj1-x244.google.com with SMTP id r24so1330671ljd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 13:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=askKkkxXJk/7B022tFBDjGnyvpKGiBG8K0FTOjs5euA=;
 b=qDR+lQnp8GZU6clIRqeNTpS4EcIwSRn+r50cmd9pOX8dPjUM29BwMm7N2pZP6ElXNs
 yIF4LVjVNZ/vdB9FY7js5QNVltWXH4WZoBiBSyY8SpIVyJzRwZWQfuyxb5IOeBvgSXo+
 23JpPYKXdJ2N82F25cSVkBc1nPQfn1C2QmDQUrqJNXOyRAoCpxti/7C2jW2yFz4QLYFl
 9wq/d/rTyUHbDlig1os6oOE8nD9ZK5KTQU4Yyjuo69IiDI4j7xeDvm96mzsfHfEfHNCB
 4Dfznn9gOn7lAiW/3LGHZLCJEEevZdfYBpUMRKkgZ6tDTgLIN7sZfuL3I1Z0joCd/ftW
 j0jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=askKkkxXJk/7B022tFBDjGnyvpKGiBG8K0FTOjs5euA=;
 b=VHoh0T6OO0s76KN1OgvP/+WBu17Bn2aSecRlAt/KUJqrsGjPJICv5JuLuAeu9thi0S
 NLsxQJiaj0X0w1yqKsw2Yi08ofU1lXxId4Igg5Uk/9UvV1TLylc7+3LcAOH79UtbNMiO
 GL4nCewgmbfKcTBDgTgzqnAF+8nfjJpYINBDg5fi4mzo4MnU0zphxH/TgbVpoqpiStmv
 q/MwEK8flskDMj5FKg2pNw1+uIHfFIlpaSg9aXHH+9WwElnEYghlBFQ4N+C+GkzoR8E+
 xnNfndLZfTV6Zx4mbOOdtQUf3FQEB42tI8odnJ5BfWQaTF0HUo/QgvNJ/MGx/WGfa70y
 JKJQ==
X-Gm-Message-State: AGi0PubkVggUR3ilpIs0qz+H83hoxtRyuQwHJzxZMjOnl+VjNl0PoPLd
 C+WKLt3E/BguWMO1Cu+UVIH/Fn4O
X-Google-Smtp-Source: APiQypLKpY4Oh1/l6cd1fcyRF3hTmivo0FLa1hS+/dsEpVS65cvkmTQCd7ECNd+sOb4FZlV1oqmO/w==
X-Received: by 2002:a05:651c:28a:: with SMTP id
 b10mr1189106ljo.223.1586897179914; 
 Tue, 14 Apr 2020 13:46:19 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id n9sm9637458ljo.89.2020.04.14.13.46.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 13:46:19 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <5616bbe7-d185-1a6a-1fc5-e4ee5d2f65e6@gmail.com>
Date: Tue, 14 Apr 2020 23:46:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-10-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_134622_213460_1740DCA5 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gK3N0YXRp
YyB2b2lkIHRlZ3JhMjEwX2NoYW5nZV9kbGxfc3JjKHN0cnVjdCB0ZWdyYTIxMF9lbWMgKmVtYywK
PiArCQkJCSAgICB1MzIgY2xrc3JjKQo+ICt7Cj4gKwl1MzIgZGxsX3NldHRpbmcgPSBlbWMtPm5l
eHQtPmRsbF9jbGtfc3JjOwo+ICsJdTMyIGVtY19jbGtfc3JjOwo+ICsJdTMyIGVtY19jbGtfZGl2
Owo+ICsKPiArCWVtY19jbGtfc3JjID0gKGNsa3NyYyAmIEVNQ19DTEtfRU1DXzJYX0NMS19TUkNf
TUFTSykgPj4KPiArCQkgICAgICAgRU1DX0NMS19FTUNfMlhfQ0xLX1NSQ19TSElGVDsKPiArCWVt
Y19jbGtfZGl2ID0gKGNsa3NyYyAmIEVNQ19DTEtfRU1DXzJYX0NMS19ESVZJU09SX01BU0spID4+
Cj4gKwkJICAgICAgIEVNQ19DTEtfRU1DXzJYX0NMS19ESVZJU09SX1NISUZUOwo+ICsKPiArCWRs
bF9zZXR0aW5nICY9IH4oRExMX0NMS19FTUNfRExMX0NMS19TUkNfTUFTSyB8Cj4gKwkJCSBETExf
Q0xLX0VNQ19ETExfQ0xLX0RJVklTT1JfTUFTSyk7Cj4gKwlkbGxfc2V0dGluZyB8PSBlbWNfY2xr
X3NyYyA8PCBETExfQ0xLX0VNQ19ETExfQ0xLX1NSQ19TSElGVDsKPiArCWRsbF9zZXR0aW5nIHw9
IGVtY19jbGtfZGl2IDw8IERMTF9DTEtfRU1DX0RMTF9DTEtfRElWSVNPUl9TSElGVDsKPiArCj4g
KwlkbGxfc2V0dGluZyAmPSB+RExMX0NMS19FTUNfRExMX0RETExfQ0xLX1NFTF9NQVNLOwo+ICsJ
aWYgKGVtY19jbGtfc3JjID09IEVNQ19DTEtfU09VUkNFX1BMTE1CX0xKKQo+ICsJCWRsbF9zZXR0
aW5nIHw9IChQTExNX1ZDT0IgPDwKPiArCQkJCURMTF9DTEtfRU1DX0RMTF9ERExMX0NMS19TRUxf
U0hJRlQpOwo+ICsJZWxzZSBpZiAoZW1jX2Nsa19zcmMgPT0gRU1DX0NMS19TT1VSQ0VfUExMTV9M
SikKPiArCQlkbGxfc2V0dGluZyB8PSAoUExMTV9WQ09BIDw8Cj4gKwkJCQlETExfQ0xLX0VNQ19E
TExfRERMTF9DTEtfU0VMX1NISUZUKTsKPiArCWVsc2UKPiArCQlkbGxfc2V0dGluZyB8PSAoRU1D
X0RMTF9TV0lUQ0hfT1VUIDw8Cj4gKwkJCQlETExfQ0xLX0VNQ19ETExfRERMTF9DTEtfU0VMX1NI
SUZUKTsKPiArCj4gKwl0ZWdyYTIxMF9jbGtfZW1jX2RsbF91cGRhdGVfc2V0dGluZyhkbGxfc2V0
dGluZyk7Cj4gKwo+ICsJaWYgKGVtYy0+bmV4dC0+Y2xrX291dF9lbmJfeF8wX2Nsa19lbmJfZW1j
X2RsbCkKPiArCQl0ZWdyYTIxMF9jbGtfZW1jX2RsbF9lbmFibGUodHJ1ZSk7Cj4gKwllbHNlCj4g
KwkJdGVncmEyMTBfY2xrX2VtY19kbGxfZW5hYmxlKGZhbHNlKTsKCklzbid0IHNvbWV0aGluZyBs
aWtlIGZlbmNlX3VkZWxheSgxKSBuZWVkZWQgYWZ0ZXIgdG91Y2hpbmcgY2xrIHJlZ2lzdGVycz8K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
