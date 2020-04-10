Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9671A475D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 16:26:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycdmV5KVEL1YLeXe0+DU0HrxUMnKKKFrmveIP+dt780=; b=E4GFwBLJJeLxcw
	q9MgZItVy38ktkUF6FaIO0jTEsYpmenIna74X3I5iMhwIUDnuptdMTq9d4MwMCCLQnd9N04KhslUu
	BNsi1nI7hA00+tFb5Ed1TnJXYJmqqr5nwVprCwVNNXJQ7dFZ5JY4U8/2to+CpcX7bfNp2Q2uOwhGz
	nmQP4SErwCDwdZ2a2z8HyV19TfweCmb6uxJaeupN9xphJtMGv6hrOxGbZG2Z9ZyNr8ailXzOvkkAx
	w+uFdepmfY1IY5A9+hmk043k6ID+UlX7YvTckKZj9dxv5cWBkswqTBxQhSDaT9fwMNGummgo2l0R+
	S6dadg5U6F3cE2T0mtxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMuc9-0007bM-QE; Fri, 10 Apr 2020 14:26:37 +0000
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMuc3-0007aa-OM
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 14:26:32 +0000
Received: by mail-lf1-f66.google.com with SMTP id h6so1500913lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 07:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eP1CO0zGVUJFrw2vQ17jzVOGCXEZoCCDlgiA/dukixo=;
 b=SA+iWDJgHgqKxiZjc7a4bINFbu4LD1mNNw2l3RzaoQYtqAqI1xWmAJ+eBTj5Mbea82
 6WbZeC+TilzYoOorcJUlUgMfozG6bZnKBqPUgvYMY5bABKH3TDIFREk7ZTgXOI7xULb6
 pDY0g/1cBeAy/kiUAXame3tPbhyY1/SNjUmIhQmtprS2eW0xjJRPz9iRo4ro92OFq7PG
 wU04rhARJgrZ3302FjRUS1k2V8opkQ4QtH9EFRzsAjPitvHsv+vRWkRXVRNz1+HQXZm0
 fj5Np+bqd+PvLF1DZ5TYwQsrHccW+rj3ECnAC2V0sHUrnt8INgfz31zEeCKca0aIVllP
 j+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eP1CO0zGVUJFrw2vQ17jzVOGCXEZoCCDlgiA/dukixo=;
 b=p6/7dq1TnydW5p7BUXiAqpvGeQsm3AiQi5B8+c2RqFLV/eer1dXbq2FXkoFmCAD/hm
 651JwduXlzK6r6L5l4oqKAUdPQuTd+tfmx4fBX5VHtqgZ1jmi0wisIr+fXN1NR75j/hQ
 QVYNAdE+CHiQD3YwNiDuIIqkWYGl1fBxZvV3hHTEniJ04rZQZfTLKufHXxmsolZuLC12
 UlN0HiOATh6ZMlu3coHicArx0pw+HR+fZaL8Yp/nsDXw4ngpwVvWfETcKunRlsR59b1E
 jaAAj7BjmL5I5PnITHqV8cEhXlju2yFV/QvCDlSrOqG+mvCI7eSzP63t/wm8swsb6A5b
 wz/Q==
X-Gm-Message-State: AGi0Pua34nonxhb4+Ey8t3XB7jCCpwzKq2wWgmQgE+iO4vBK3inoSpHk
 3otkPaHD2LMa9Rd8ZAqTMvttEcuA
X-Google-Smtp-Source: APiQypJjSCss7oyD5NKjhDOjY/E17oNYKt/g/ZmGjxSAjNO65in/+HIwZOtH40f3PA4BP2qbY2M0nw==
X-Received: by 2002:a19:7411:: with SMTP id v17mr2821387lfe.27.1586528784423; 
 Fri, 10 Apr 2020 07:26:24 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id f26sm1153831lja.102.2020.04.10.07.26.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 07:26:23 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <14cfd13a-5fde-f167-64cb-a61cba119a97@gmail.com>
Date: Fri, 10 Apr 2020 17:26:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-10-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_072631_790547_06496F54 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
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
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiArc3RhdGljIGlu
dCB0ZWdyYTIxMF9lbWNfdGFibGVfZGV2aWNlX2luaXQoc3RydWN0IHJlc2VydmVkX21lbSAqcm1l
bSwKPiArCQkJCQkgIHN0cnVjdCBkZXZpY2UgKmRldikKPiArewo+ICsJc3RydWN0IHRlZ3JhMjEw
X2VtYyAqZW1jID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKPiAr
CXZvaWQgKnRhYmxlOwo+ICsKPiArCXRhYmxlID0gbWVtcmVtYXAocm1lbS0+YmFzZSwgcm1lbS0+
c2l6ZSwgTUVNUkVNQVBfV0IpOwo+ICsJaWYgKCF0YWJsZSkgewo+ICsJCWRldl9lcnIoZGV2LCAi
ZmFpbGVkIHRvIG1hcCBFTUMgdGFibGVcbiIpOwo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsJfQo+
ICsKPiArCWVtYy0+dGltaW5ncyA9IChzdHJ1Y3QgdGVncmEyMTBfZW1jX3RpbWluZyAqKXRhYmxl
OwoKTm8gbmVlZCB0byBjYXN0IHRoZSB2b2lkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
