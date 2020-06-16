Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7F61FAB27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SL15S8kquahuVYSD2K2nQYDxgWZIqgfFhBNUEtPDZ0k=; b=SAMFlYozFKkR8m
	UqSuTkrpmdfcBG8tKI7tK3NwxCGrsprPlpYCoIJmW0b2Y2wcTFN93hxkn/pVNkhucyRqAPdsRVeUs
	XluzzwOdbsMZ4IhyFZcj+UgBYm6U+65YH9zJQNqZhEztB4/izWzV/KbKuByI3ACrd1Z4UTlbbhGox
	kGwhBW4ME75KEs65tPw225yM/CXQXQ1mpA29llfpXINbSLJ9kINiH5dk0zy7Po0XwzicU7hhBQ4XZ
	yW+0s4+T2fSs6Ce/B6yebcF3fFR20QXxsLPK160tzpb1IMnLUIsKrxxaK8xyF2hjcTNKN1/uNKJgk
	Trd33omNUQZjWU6rofTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6x6-0005Ee-93; Tue, 16 Jun 2020 08:28:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6ww-0005Ds-5L
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:28:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so19814366wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 01:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=B3Zvc0+WkJWTmHdueBto0Q5WGj5wxL8G3qgASoBVzNY=;
 b=gLakXFsIC8xZtNwr+XfHP1wnr5SDo5nHecQ4brNe+lN2ChBIsKPXALQeHsIYYaLTXb
 wsvothXzTvUtQKDoSSHmDdiny1LJSckLfw1XnhXhiPAKw/TnCVbjH9L2P5IOgnxLahvD
 5kajvazyTYkm4UxG9dIxiqA2FO1wwGkvejOnt/oVT7h13AdfGubQVmi2NieFR0lX/NIZ
 8YFNuHCvlY3mexZYqrHcvNt2LtxuvNyr43qnliRLp+9Q2uLMZLwNvzMlnLOYbGGjAtXk
 LUUwyneBgVZaLmTSdxo2Gk03Mj5BJVjRjoHyK1UcuXPm70vAq+YgSNDHi9gCE+VEavB+
 5zLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=B3Zvc0+WkJWTmHdueBto0Q5WGj5wxL8G3qgASoBVzNY=;
 b=GFfvqSmhAFlxHGkgudB2x728ZC+LLzHo9lApcwWEJCKseaWSJZcd7ecoJXlpmzsS4K
 Sm8QHYcGQsR4BaeT76aKNd1CPOid74g6+1kgiYCI86ZLiOYj2UfxpY6VKRiYyWmkyKhM
 tfPqWDeuhnZPgO65QRq09HcadTdLRNBrcZsgX83PlkfRwWS/tyrt9JZB8TTc+joH6Y6w
 9GeQNd5oUjaWaamA84PZdbUBdG+pjTg3hC7GzZ3MyJpcENGXgQTb4mdYya3+g+Gw23I2
 /PRE6nFB/jLjbGWDKlZUcEtihCQSrqUaI2/sydnhvX7776iRYNY6c0yWZcJI/UFAVDM6
 slTw==
X-Gm-Message-State: AOAM531aZooKTMW8sviKJRoOhobt3eMa+tcNWM3Pfo6ZuWfSafG0Wh0v
 MHhupF+/oNoeqf48zFmqv7pkvw==
X-Google-Smtp-Source: ABdhPJzAvCk0ui/vMtJ+dz/ehjMGM1fOixVzM29fYWpKqQN1QryV19KiL93HTiApPkKVxsAzR5Xljg==
X-Received: by 2002:adf:ea11:: with SMTP id q17mr1748627wrm.75.1592296084603; 
 Tue, 16 Jun 2020 01:28:04 -0700 (PDT)
Received: from dell ([109.180.115.156])
 by smtp.gmail.com with ESMTPSA id z16sm28111508wrm.70.2020.06.16.01.28.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 01:28:03 -0700 (PDT)
Date: Tue, 16 Jun 2020 09:28:02 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: Fix register driver NULL pointer by add
 driver name
Message-ID: <20200616082802.GM2608702@dell>
References: <1591609125-3761-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591609125-3761-1-git-send-email-gene.chen.richtek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_012806_236229_BE7B2527 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwOCBKdW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBGcm9tOiBHZW5lIENoZW4g
PGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPiAKPiBhY2NpZGVudGFsbHkgcmVtb3ZlIGRyaXZlciBu
YW1lIHdoZW4KPiByZXBsYWNlIHByb2JlIGJ5IHByb2JlX25ldyBpbiBhZGQgbXQ2MzYwIG1mZCBk
cml2ZXIgcGF0Y2ggdjQKPiAKPiBbICAxMjEuMjQzMDEyXSBFQVg6IGMyYThiYzY0IEVCWDogMDAw
MDAwMDAgRUNYOiAwMDAwMDAwMCBFRFg6IDAwMDAwMDAwCj4gWyAgMTIxLjI0MzAxMl0gRVNJOiBj
MmE4YmM3OSBFREk6IDAwMDAwMDAwIEVCUDogZTU0YmRlYTggRVNQOiBlNTRiZGVhMAo+IFsgIDEy
MS4yNDMwMTJdIERTOiAwMDdiIEVTOiAwMDdiIEZTOiAwMDAwIEdTOiAwMDAwIFNTOiAwMDY4IEVG
TEFHUzogMDAwMTAyODYKPiBbICAxMjEuMjQzMDEyXSBDUjA6IDgwMDUwMDMzIENSMjogMDAwMDAw
MDAgQ1IzOiAwMmVjMzAwMCBDUjQ6IDAwMDAwNmIwCj4gWyAgMTIxLjI0MzAxMl0gQ2FsbCBUcmFj
ZToKPiBbICAxMjEuMjQzMDEyXSAga3NldF9maW5kX29iaisweDNkLzB4YzAKPiBbICAxMjEuMjQz
MDEyXSAgZHJpdmVyX2ZpbmQrMHgxNi8weDQwCj4gWyAgMTIxLjI0MzAxMl0gIGRyaXZlcl9yZWdp
c3RlcisweDQ5LzB4MTAwCj4gWyAgMTIxLjI0MzAxMl0gID8gaTJjX2Zvcl9lYWNoX2RldisweDM5
LzB4NTAKPiBbICAxMjEuMjQzMDEyXSAgPyBfX3Byb2Nlc3NfbmV3X2FkYXB0ZXIrMHgyMC8weDIw
Cj4gWyAgMTIxLjI0MzAxMl0gID8gY2h0X3djX2RyaXZlcl9pbml0KzB4MTEvMHgxMQo+IFsgIDEy
MS4yNDMwMTJdICBpMmNfcmVnaXN0ZXJfZHJpdmVyKzB4MzAvMHg4MAo+IFsgIDEyMS4yNDMwMTJd
ICA/IGludGVsX2xwc3NfcGNpX2RyaXZlcl9pbml0KzB4MTYvMHgxNgo+IFsgIDEyMS4yNDMwMTJd
ICBtdDYzNjBfcG11X2RyaXZlcl9pbml0KzB4Zi8weDExCj4gWyAgMTIxLjI0MzAxMl0gIGRvX29u
ZV9pbml0Y2FsbCsweDMzLzB4MWEwCj4gWyAgMTIxLjI0MzAxMl0gID8gcGFyc2VfYXJncysweDFl
Yi8weDNkMAo+IFsgIDEyMS4yNDMwMTJdICA/IF9fbWlnaHRfc2xlZXArMHgzMS8weDkwCj4gWyAg
MTIxLjI0MzAxMl0gID8ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxMGEvMHgxN2YKPiBbICAxMjEu
MjQzMDEyXSAga2VybmVsX2luaXRfZnJlZWFibGUrMHgxMmMvMHgxN2YKPiBbICAxMjEuMjQzMDEy
XSAgPyByZXN0X2luaXQrMHgxMTAvMHgxMTAKPiBbICAxMjEuMjQzMDEyXSAga2VybmVsX2luaXQr
MHhiLzB4MTAwCj4gWyAgMTIxLjI0MzAxMl0gID8gc2NoZWR1bGVfdGFpbF93cmFwcGVyKzB4OS8w
eGMKPiBbICAxMjEuMjQzMDEyXSAgcmV0X2Zyb21fZm9yaysweDE5LzB4MjQKPiBbICAxMjEuMjQz
MDEyXSBNb2R1bGVzIGxpbmtlZCBpbjoKPiBbICAxMjEuMjQzMDEyXSBDUjI6IDAwMDAwMDAwMDAw
MDAwMDAKPiBbICAxMjEuMjQzMDEyXSByYW5kb206IGdldF9yYW5kb21fYnl0ZXMgY2FsbGVkIGZy
b20gaW5pdF9vb3BzX2lkKzB4M2EvMHg0MCB3aXRoIGNybmdfaW5pdD0wCj4gWyAgMTIxLjI0MzAx
Ml0gLS0tWyBlbmQgdHJhY2UgMzhhODAzNDAwZjFhMmJlZSBdLS0tCj4gWyAgMTIxLjI0MzAxMl0g
RUlQOiBzdHJjbXArMHgxMS8weDMwCj4gCj4gU2lnbmVkLW9mZi1ieTogR2VuZSBDaGVuIDxnZW5l
X2NoZW5AcmljaHRlay5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMgfCAx
ICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpBcHBsaWVkLCB0aGFua3MuCgot
LSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3Bl
ciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNv
Q3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
