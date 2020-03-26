Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449EF1940F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 15:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YnDhF+zGQP9t3cX8d2UI2ikdPgbQuxq6t3S5G/Bu+U0=; b=h+J214k/w1GcGm
	jQ7h+mA1hLs3rrku1htajdznDts3TstUgK52fcgNFOWiQbJXHPejGUBtpP9h+EPvI8xGWmhmMyFUK
	ud/94mtUseKLTX6yl2W7eyGom1hqoILVs5EuYDEgH6qYxiMlV9eCClkF5pCqqytB6HxA1FfCfogVM
	31dxof2+bFiFeFMEfNDsS2h/TS4j6zZHc00spg9zC+Y0T1EqkinmAf7E54G7UvNYRMEbYKQgcJ/Xc
	i1uiIusoMqTtQM+rbrEKlclAWKzAdtYroRjPPS6Db/q5GAUGSTi/USOH6Rz81ncv6lssdykauGhWs
	J9TVcNucBDxCZVQQFEog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHT9n-0002i8-DX; Thu, 26 Mar 2020 14:06:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHT9d-0002hJ-RN
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 14:06:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id z5so6588779wml.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 07:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nkNzxi3g+0tYIhDtCnYGTEVFo1Tvrp1jB9HlC2wfDNE=;
 b=zIBDANP4GgSgU3s25aTZakLydTimZa3G5vB1cE2zZce1X3In8n6ZsusIKeuVjQLIDj
 VlGo7SvvXbes+A93F1gdtbtBRRZSNCD5N+UfoZMtxVqEzLbD8O8OLIk7l4NcK0RvzQWc
 ILXT9FvUgBoIpxKmdFzqwAnBo9Bk1ehY0wCeEYx6t65VJTL2SMRkVsJl8PIt2qyNnJPb
 eOYSMoPfz9AVSVf56TeHS3JKBNLskVhD7BWzM/9XBJzvP2naQuBstLtajL35Fn3HgPqw
 N0QGg+zpJZJaSRJKIwgcmAXhszhb6w1CLjPEHV/OKI+kWxZRMOlz92IZDJUglJHkCW98
 kUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=nkNzxi3g+0tYIhDtCnYGTEVFo1Tvrp1jB9HlC2wfDNE=;
 b=rSLSogIWJd5groQJzf60Vt5WIHyyGdUKM2jJgy31KFDmo7WTAqqvj0Zpw0tWlaM3TL
 Znxm9TiLvTs+MkPVlYcGL+tM1Xvdd2GRGUzQ6n+6pKJiFoo/HIRJYn+T8GSzCjnwxZck
 ieY/xBBxkA2t9kyYmM2rpmeUIY1fo3pE28/EG3cPO5m/WWv+vJF8yuZfiCnh2Af7N+an
 8uZ5LJ6KNnJ2D1bFQt1Lbo45jkxC8IYJGMlKiQTHodlmwvETRWgTUVhlP4txi3LMGSP6
 RiQBzhaHiqqTCIwz7KdYmFQvWMiFyDHe2KLAGAH6PXLJrrsZ7/E0Vz2b3oTF0zOveHz/
 tikg==
X-Gm-Message-State: ANhLgQ1kzO6K3iq89zxe3UfFTRMqMpwv6NoteQQmt03qD9JxPaT6TDuX
 /azbiyd2dh6TbRBTp1pNlOUjsQ==
X-Google-Smtp-Source: ADFU+vuZmGro1uxPYVpKjOVBgALBYdXUEATAJoDZZVOPB658ACXYqf+VR9Of0GHKJW7B3lfsrPNtIQ==
X-Received: by 2002:a05:600c:295e:: with SMTP id
 n30mr152362wmd.106.1585231599302; 
 Thu, 26 Mar 2020 07:06:39 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:d702:b4a5:b331:1282?
 ([2a01:e34:ed2f:f020:d702:b4a5:b331:1282])
 by smtp.googlemail.com with ESMTPSA id w204sm3800979wma.1.2020.03.26.07.06.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Mar 2020 07:06:38 -0700 (PDT)
Subject: Re: [PATCH] thermal: imx: Add missing of_node_put()
To: Anson Huang <Anson.Huang@nxp.com>, rui.zhang@intel.com,
 amit.kucheria@verdurent.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1585200445-16461-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <8325cde9-02f3-b913-b020-4c98d19936f4@linaro.org>
Date: Thu, 26 Mar 2020 15:06:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1585200445-16461-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_070641_924316_97D51391 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMDMvMjAyMCAwNjoyNywgQW5zb24gSHVhbmcgd3JvdGU6Cj4gQWZ0ZXIgZmluaXNoaW5n
IHVzaW5nIGNwdSBub2RlIGdvdCBmcm9tIG9mX2dldF9jcHVfbm9kZSgpLAo+IG9mX25vZGVfcHV0
KCkgbmVlZHMgdG8gYmUgY2FsbGVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5zb24gSHVhbmcgPEFu
c29uLkh1YW5nQG54cC5jb20+IC0tLQo+IGRyaXZlcnMvdGhlcm1hbC9pbXhfdGhlcm1hbC5jIHwg
MTAgKysrKysrKy0tLSAxIGZpbGUgY2hhbmdlZCwgNwo+IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL2lteF90aGVybWFsLmMKPiBi
L2RyaXZlcnMvdGhlcm1hbC9pbXhfdGhlcm1hbC5jIGluZGV4IGU3NjFjOWIuLmY3Yjk3MGQgMTAw
NjQ0IC0tLQo+IGEvZHJpdmVycy90aGVybWFsL2lteF90aGVybWFsLmMgKysrCj4gYi9kcml2ZXJz
L3RoZXJtYWwvaW14X3RoZXJtYWwuYyBAQCAtNjQ5LDcgKzY0OSw3IEBACj4gTU9EVUxFX0RFVklD
RV9UQUJMRShvZiwgb2ZfaW14X3RoZXJtYWxfbWF0Y2gpOyBzdGF0aWMgaW50Cj4gaW14X3RoZXJt
YWxfcmVnaXN0ZXJfbGVnYWN5X2Nvb2xpbmcoc3RydWN0IGlteF90aGVybWFsX2RhdGEgKmRhdGEp
Cj4geyBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wOyAtCWludCByZXQ7ICsJaW50IHJldCA9IDA7Cj4K
PiBkYXRhLT5wb2xpY3kgPSBjcHVmcmVxX2NwdV9nZXQoMCk7IGlmICghZGF0YS0+cG9saWN5KSB7
IEBAIC02NjQsMTEKPiArNjY0LDE1IEBAIHN0YXRpYyBpbnQgaW14X3RoZXJtYWxfcmVnaXN0ZXJf
bGVnYWN5X2Nvb2xpbmcoc3RydWN0Cj4gaW14X3RoZXJtYWxfZGF0YSAqZGF0YSkgaWYgKElTX0VS
UihkYXRhLT5jZGV2KSkgeyByZXQgPQo+IFBUUl9FUlIoZGF0YS0+Y2Rldik7IGNwdWZyZXFfY3B1
X3B1dChkYXRhLT5wb2xpY3kpOyAtCQkJcmV0dXJuCj4gcmV0OyArCQkJZ290byBwdXRfbm9kZTsg
fSB9Cj4KPiAtCXJldHVybiAwOyArcHV0X25vZGU6ICsJaWYgKG5wKSArCQlvZl9ub2RlX3B1dChu
cCk7CgpvZl9ub2RlX3B1dCgpIGlzIGFscmVhZHkgY2hlY2tpbmcgaWYgJ25wJyBpcyBOVUxMLgoK
PiArICsJcmV0dXJuIHJldDsgfQo+Cj4gc3RhdGljIHZvaWQgaW14X3RoZXJtYWxfdW5yZWdpc3Rl
cl9sZWdhY3lfY29vbGluZyhzdHJ1Y3QKPiBpbXhfdGhlcm1hbF9kYXRhICpkYXRhKQo+CgoKLS0g
CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5j
b20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJv
b3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
