Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8B81A8CF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzM26oLozK7grRzcuWKVZ2Uv63l4A6OPzBzoi1UG+TM=; b=eBq75YCxH+YtIK
	6HDUON5A6ExWI2iI453GYSde06P8ATSBm6CcLMd4w+uPgZW/TReHaf7c/lOKcZk/WYK3rG0NhCMI6
	NCf7mO/pkTdp5OATnKt9CG1JtRQKtHPOl+JkOTpu2A+/tWvADloHTBFX+uzuV3qKp50pesoJ5qps/
	uqJPJ9TGlAkXyvjHbMo4Hw5tUM2Hn/e/HMz8z6mzfEjzDwJYe5C/7z7vhqb5B8hMZcZjk1qAHJM+1
	EjZTZggY9ZyjiviaXqld7BW055tYnT9NeMu73AjseITV5xUIm9RDlrecuUotFDtIU4A1/2j4Hsl1S
	iewyvAycvrMANLx4OI0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSbx-00036A-S1; Tue, 14 Apr 2020 20:56:49 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOSbl-00035X-D0
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 20:56:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id 131so862580lfh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 13:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VXIck97a0Aek/aAV52HpZ0MXWHfB9oEpMa5wcF3XgGk=;
 b=SbDjzXioUzTK32wnVrOp+mrUtzSJSwM9ueiRLctq5tLHRvYwiSJElJDhHCBoZUsG/t
 vMpPxeF17vsyiNu4qfxNsQhviSI4eW3UJ5aFa8gO2TKLKXb1YEl1kYhQBc+rRbf+QStB
 2Pb/rJJ7LKgjsHveBSwOCZxamYEVaf3RbfYsFfO4mYSjn0wKPmIOsHsu0Ex39oJoqy2i
 xtgJ9RTwK+kuvDYwjkxZ0vlxohaEJ+7y1Kb1RhUbxAvzopQa4EuY7eYgMhg1uqGn9B0e
 FVXp0h00rjH+v7gS0SCDYIHGw9O2nj4sniBJITJpE52MNdnWnB6jU/fwl3YWDL1YrJdT
 crPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VXIck97a0Aek/aAV52HpZ0MXWHfB9oEpMa5wcF3XgGk=;
 b=Hk/8/iXEAuDbeh8WdTaiUkwR+wv5wL5sUNNY2jRxJ5f+QHfNOQNxPbqofixzMNwzH0
 famnSfaByqCEj2lMty0WQQXw4AIrHgElMtqX+gPSXH/OB63TBGd1H7D7COOsxWpFB2Va
 3NQN7nDXU0SoviclelE3pNFAs9pYIsH/W5hPcRNTXLb3vEZczABbPjczA+pl/1jm4jI2
 HyuPsfv7un81pYu2aprYG/rdZmhDU8TMYEx+EfyxTVj3rQj8iJDJV942liWBKEgY/eA3
 aogto4hwMXS32YUP4DWpLViXVIbOuFGVxds5KYPczANO3hEbF22XHkbWwS/RwcNXOGEA
 +RWA==
X-Gm-Message-State: AGi0PuZtfWiC2IYNID5my6TQ+gCWLF5ZCTp2MZWVrJbInLCmjnB3SCaF
 1Ww2JWIwFHuixW3Ad83mA2u0F5rF
X-Google-Smtp-Source: APiQypKtH1bUDHRdjihShdon0tmZ0zNWbYZQeiYG5Hr+bD+QTuphwkvgyVN2rrgzBmXRVqqdsJ4sSQ==
X-Received: by 2002:ac2:43c7:: with SMTP id u7mr1002725lfl.50.1586897795282;
 Tue, 14 Apr 2020 13:56:35 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id t8sm11485093lfe.31.2020.04.14.13.56.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 13:56:34 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <5616bbe7-d185-1a6a-1fc5-e4ee5d2f65e6@gmail.com>
Message-ID: <1ed62d87-4194-6dca-e28c-ff99988b6697@gmail.com>
Date: Tue, 14 Apr 2020 23:56:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5616bbe7-d185-1a6a-1fc5-e4ee5d2f65e6@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_135637_466877_A33099E9 
X-CRM114-Status: GOOD (  12.41  )
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

MTQuMDQuMjAyMCAyMzo0NiwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMDkuMDQuMjAy
MCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiAuLi4KPj4gK3N0YXRpYyB2b2lk
IHRlZ3JhMjEwX2NoYW5nZV9kbGxfc3JjKHN0cnVjdCB0ZWdyYTIxMF9lbWMgKmVtYywKPj4gKwkJ
CQkgICAgdTMyIGNsa3NyYykKPj4gK3sKPj4gKwl1MzIgZGxsX3NldHRpbmcgPSBlbWMtPm5leHQt
PmRsbF9jbGtfc3JjOwo+PiArCXUzMiBlbWNfY2xrX3NyYzsKPj4gKwl1MzIgZW1jX2Nsa19kaXY7
Cj4+ICsKPj4gKwllbWNfY2xrX3NyYyA9IChjbGtzcmMgJiBFTUNfQ0xLX0VNQ18yWF9DTEtfU1JD
X01BU0spID4+Cj4+ICsJCSAgICAgICBFTUNfQ0xLX0VNQ18yWF9DTEtfU1JDX1NISUZUOwo+PiAr
CWVtY19jbGtfZGl2ID0gKGNsa3NyYyAmIEVNQ19DTEtfRU1DXzJYX0NMS19ESVZJU09SX01BU0sp
ID4+Cj4+ICsJCSAgICAgICBFTUNfQ0xLX0VNQ18yWF9DTEtfRElWSVNPUl9TSElGVDsKPj4gKwo+
PiArCWRsbF9zZXR0aW5nICY9IH4oRExMX0NMS19FTUNfRExMX0NMS19TUkNfTUFTSyB8Cj4+ICsJ
CQkgRExMX0NMS19FTUNfRExMX0NMS19ESVZJU09SX01BU0spOwo+PiArCWRsbF9zZXR0aW5nIHw9
IGVtY19jbGtfc3JjIDw8IERMTF9DTEtfRU1DX0RMTF9DTEtfU1JDX1NISUZUOwo+PiArCWRsbF9z
ZXR0aW5nIHw9IGVtY19jbGtfZGl2IDw8IERMTF9DTEtfRU1DX0RMTF9DTEtfRElWSVNPUl9TSElG
VDsKPj4gKwo+PiArCWRsbF9zZXR0aW5nICY9IH5ETExfQ0xLX0VNQ19ETExfRERMTF9DTEtfU0VM
X01BU0s7Cj4+ICsJaWYgKGVtY19jbGtfc3JjID09IEVNQ19DTEtfU09VUkNFX1BMTE1CX0xKKQo+
PiArCQlkbGxfc2V0dGluZyB8PSAoUExMTV9WQ09CIDw8Cj4+ICsJCQkJRExMX0NMS19FTUNfRExM
X0RETExfQ0xLX1NFTF9TSElGVCk7Cj4+ICsJZWxzZSBpZiAoZW1jX2Nsa19zcmMgPT0gRU1DX0NM
S19TT1VSQ0VfUExMTV9MSikKPj4gKwkJZGxsX3NldHRpbmcgfD0gKFBMTE1fVkNPQSA8PAo+PiAr
CQkJCURMTF9DTEtfRU1DX0RMTF9ERExMX0NMS19TRUxfU0hJRlQpOwo+PiArCWVsc2UKPj4gKwkJ
ZGxsX3NldHRpbmcgfD0gKEVNQ19ETExfU1dJVENIX09VVCA8PAo+PiArCQkJCURMTF9DTEtfRU1D
X0RMTF9ERExMX0NMS19TRUxfU0hJRlQpOwo+PiArCj4+ICsJdGVncmEyMTBfY2xrX2VtY19kbGxf
dXBkYXRlX3NldHRpbmcoZGxsX3NldHRpbmcpOwo+PiArCj4+ICsJaWYgKGVtYy0+bmV4dC0+Y2xr
X291dF9lbmJfeF8wX2Nsa19lbmJfZW1jX2RsbCkKPj4gKwkJdGVncmEyMTBfY2xrX2VtY19kbGxf
ZW5hYmxlKHRydWUpOwo+PiArCWVsc2UKPj4gKwkJdGVncmEyMTBfY2xrX2VtY19kbGxfZW5hYmxl
KGZhbHNlKTsKPiAKPiBJc24ndCBzb21ldGhpbmcgbGlrZSBmZW5jZV91ZGVsYXkoMSkgbmVlZGVk
IGFmdGVyIHRvdWNoaW5nIGNsayByZWdpc3RlcnM/Cj4gCgpXb24ndCBiZSBiZXR0ZXIgdG8gbW92
ZSB0aGlzIHdob2xlIGZ1bmN0aW9uIGludG8gY2xrL3RlZ3JhPwoKSXQgZmVlbHMgYSBiaXQgZGly
dHkgdGhhdCBhIHJhdyBjbGsgcG9pbnRlciBpcyBwYXNzZWQgdG8gdGhlIEVNQyBjb2RlLgpJJ2Qg
ZmFjdG9yIGFsbCB0aGUgY2xrIGZ1bmN0aW9ucyBpbnRvIGNsay90ZWdyYSB0byBoYXZlIGEgY2xl
YW4Kc2VwYXJhdGlvbiBvZiB0aGUgY29kZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
