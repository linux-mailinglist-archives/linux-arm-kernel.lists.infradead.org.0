Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8709D1D90CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 09:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0il02sWzDG0H+83gCr2QsSK3yigVVCcKoCEeMprbG0=; b=Amo6ACdDs6xDEC
	Vy2G00XJAyXjO3LdBkWuMe0s0ZD4VLbipxVgh17VdQP26SIrQOLXdLxtxn+No6f7i7OuihD+poP7k
	eYtxda2Do4kw4D53qSm102VlHEGrtDwjSqMmwzA4Z1vqD8r90AaaqxDc52vrgO/Zb5PR5Q7blRozQ
	K1g6/AevyJosULUeDeo+gcjhg9X1THXKGWnD19KoU29/U+IFhO+ERtwM1fccxjvVLKdFTkRyxSTXx
	GJKBuLGTIJun/k34Of7Ll48i2JGT+KgrZ9/OWbG9j2zl2xSmFTUx0+HXvhD88pQtdfLChX5zVD0UB
	7XTcOlYZjyNUpfYxeGag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jawUd-0003Gg-O6; Tue, 19 May 2020 07:16:51 +0000
Received: from mail-ej1-f68.google.com ([209.85.218.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawUT-0003Fq-N8
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 07:16:42 +0000
Received: by mail-ej1-f68.google.com with SMTP id s21so10929134ejd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 00:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=czw5XAHuVQyeo0GaaGsHjL+iNsEvTVJwYFnML7pk990=;
 b=OQx6g6ksTpD5XkF9iNO02kicfV/fG6RqHjaLY1xC+tc6tTqfrkJlGIPI5wTxxrlWCF
 ltf1YW580t08e7L4DTOnOQtTchn8Uezgsrh24Jf4dBY2PiarJJ8Sl4kz7Qs6jFZkVifq
 ZejJQHYZ1TUqF3/QVGYkh+RXC3IrKlvQmhm/1KExkxhcUoy3/FC/YKoGEJnat6OBbA1B
 CcrLebirgFFHz+skCPTP1ASaNZcwkMK2gelXISjZSBDgpzoVQxFhzo9QWfCE7hDZcb6z
 fGnPtS//MKrqmLVFMGqmpIWYVj/W47va+xgxbyKHMxNfGKL8gZfs0sOjalOu1Y6up1zy
 lM7Q==
X-Gm-Message-State: AOAM5326sK5Q6afksq6sQk5r15FshJMNDCEIRe2+SzzzHwMcGk8WLChq
 YT5Gm37wZ7XoRA5CDlNiQrs=
X-Google-Smtp-Source: ABdhPJzIRX+Uvac/mFboWQ4qXwL71U8FW6fLVGH+Y+7thPaQdu49D8AiTD5v1+LcEq4/Lq5C6URTog==
X-Received: by 2002:a17:906:3048:: with SMTP id
 d8mr18239949ejd.97.1589872599602; 
 Tue, 19 May 2020 00:16:39 -0700 (PDT)
Received: from kozik-lap ([194.230.155.188])
 by smtp.googlemail.com with ESMTPSA id o21sm18954edr.68.2020.05.19.00.16.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 19 May 2020 00:16:38 -0700 (PDT)
Date: Tue, 19 May 2020 09:16:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v9 10/10] arm64: dts: Add node for ufs exynos7
Message-ID: <20200519071636.GA6971@kozik-lap>
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005313epcas5p3eac58d00d9f617b860a3ac607c8413ec@epcas5p3.samsung.com>
 <20200514003914.26052-11-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514003914.26052-11-alim.akhtar@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_001641_750701_2E85CD99 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgMDY6MDk6MTRBTSArMDUzMCwgQWxpbSBBa2h0YXIgd3Jv
dGU6Cj4gQWRkaW5nIGR0IG5vZGUgZm9lIFVGUyBhbmQgVUZTLVBIWSBmb3IgZXh5bm9zNyBTb0Mu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQWxpbSBBa2h0YXIgPGFsaW0uYWtodGFyQHNhbXN1bmcuY29t
Pgo+IFRlc3RlZC1ieTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwu
Y29tPgo+IC0tLQo+ICAuLi4vYm9vdC9kdHMvZXh5bm9zL2V4eW5vczctZXNwcmVzc28uZHRzICAg
ICAgfCAgNCArKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LmR0c2kgICAg
ICAgfCA0MyArKysrKysrKysrKysrKysrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCkkgd2lsbCBwaWNrIGl0IHVwIGFmdGVyIGFsbCBiaW5k
aW5ncyBnZXQgUm9iJ3MgYWNrIChvciBhcmUgcGlja2VkIHVwIGFzCndlbGwpLiAgVGhlIHNlY29u
ZCBiaW5kaW5ncyBwYXRjaCBhcmUgc3RpbGwgcGVuZGluZyBvbiB0aGF0LgoKQmVzdCByZWdhcmRz
LApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
