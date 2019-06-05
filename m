Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2921D36398
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 20:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvgIndozmDdYIxurSPoEdIZXE8aA6xzWIbBIkGqUFKE=; b=d/sonTIeyiTPRR
	fz4sRbQs9zN8qWnWXXpkl9SN9h1JZqVltkrW5mzcN686kRuy3DYexDornsualqKiN/VN+jJ36Vr0u
	pXQ1uQyuohPPvW0/1ebXIG9auSSV4lAbcjLe1YPQ3ig8RRzi9ickuU5j2wlX/jycfMIeoPh3L4qO0
	CUYAo8YtPm2b7nHXV5FwqZzQT6pTbkb01EiMNYud3hLsODbU6lc3YzxlGcGzxm9W5aAfUDewPhRht
	uiBa6kRkWUyTbctsnR46rBMMx+3XoLlmc4Uj13SDTrlqpkTMqKR8wAtR8X3N3MJCkd73EoZNBZ1dH
	R5cxl5ZgWXqklHJyppRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYazm-0007rn-3O; Wed, 05 Jun 2019 18:50:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYaze-0007rH-PC
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 18:50:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so8111884wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 11:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=8vNfSakOSIaeYkNSrJu0oYtoS/2sVqhVE+XWuJ5wXUA=;
 b=y1tiV2V5sXR3finGbj6PBB105VryHTKBqz6Fi26P7OokmguArILT6hR/brsN28qt7i
 2YxLaKNSfPqK9Jgn9/mMlkG4G+VOFZMqs+hA+U8FgWjwjngGWP4rNePL/0vsUE434Dgn
 /Bn7FXIBYtkEalGH5AJa0lDnpJPu1hXWV49rQm3uniXffz5UuCgRVRv3rpp95FBovRuc
 TrtRVDgL0i/GhVFoakUZgwUjlM2oFg4FSVYnXAoBj1vvd9IBL5ntUsaPF+P6e0Brnn1p
 nRB62Fr54pp9/t8HlVU+70QokwHFqnp1HnCFL1MeIYtD/oVdHuObfQXi5WNbGN/zqzEx
 gArQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8vNfSakOSIaeYkNSrJu0oYtoS/2sVqhVE+XWuJ5wXUA=;
 b=EWq62xATfucQJyW6FEHObrjgvW0JzhFXxzBVqCPQfVcErMf76eZ7jxODk0V/3e9OQt
 hgpDjsj5MPC0O9YWu0/KPTNEskZqOXiTQ3ilj4ggIEpejOsWqO+qy9wKhsyvje7fdV0t
 Cm86ZpHdXMsd8ybMumWN2BeIqOYBq/bMY7sEOUoEJdvi0r3t9mBNE8E+0xFi4riTZdkK
 yUTVWSwPbC4dgNBE1As1dD0Ire++TLuYBBH8tEIAc6KWjxKGI8oT/qzPcLoEojI53CU/
 DmNQY7siaAzI2Q70Nz9blPX8WWMteAua9o7HC1JoMS/ABBVRWfjXKN+7rcKYFogk0Z93
 M+0g==
X-Gm-Message-State: APjAAAX+yFnZayE+vRsbz6FIOdAjk8WeqrWBI4/ZgloqtIUsqqLt/OHL
 SrjrlZTHA4gmHrjtb1QBSZvjSA==
X-Google-Smtp-Source: APXvYqwL7qctviv4Xofr/RuLW7YnI4XPLqzlKOFo+Pb0C7oxaQ8vKyl1fZALCZuFEXSz4BRXAxnX/g==
X-Received: by 2002:adf:cc85:: with SMTP id p5mr11577692wrj.47.1559760637352; 
 Wed, 05 Jun 2019 11:50:37 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id v15sm13443547wrt.25.2019.06.05.11.50.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 11:50:36 -0700 (PDT)
Date: Wed, 5 Jun 2019 19:50:35 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Jeffrey Hugo <jhugo@codeaurora.org>
Subject: Re: [PATCH 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the
 SDM845
Message-ID: <20190605185035.GV4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-7-lee.jones@linaro.org>
 <20190605070029.GN22737@tuxbook-pro> <20190605083454.GO4797@dell>
 <d9ba98e6-3caf-62fc-45ca-944cb718b7e4@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9ba98e6-3caf-62fc-45ca-944cb718b7e4@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_115038_819500_6F46BE7B 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: balbi@kernel.org, david.brown@linaro.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 wsa+renesas@sang-engineering.com, alokc@codeaurora.org,
 kramasub@codeaurora.org, linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNSBKdW4gMjAxOSwgSmVmZnJleSBIdWdvIHdyb3RlOgoKPiBPbiA2LzUvMjAxOSAy
OjM0IEFNLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBXZWQsIDA1IEp1biAyMDE5LCBCam9ybiBB
bmRlcnNzb24gd3JvdGU6Cj4gPiAKPiA+ID4gT24gVHVlIDA0IEp1biAwMzo0NCBQRFQgMjAxOSwg
TGVlIEpvbmVzIHdyb3RlOgo+ID4gPiAKPiA+ID4gPiBXaGVuIGJvb3Rpbmcgd2l0aCBEZXZpY2Ug
VHJlZSwgdGhlIGN1cnJlbnQgZGVmYXVsdCBib290IGNvbmZpZ3VyYXRpb24KPiA+ID4gPiB0YWJs
ZSBvcHRpb24sIHRoZSByZXF1ZXN0IHRvIGJvb3QgdmlhICdob3N0IG1vZGUnIGNvbWVzIGZyb20g
dGhlCj4gPiA+ID4gImRyX21vZGUiIHByb3BlcnR5Lgo+ID4gPiAKPiA+ID4gVGhpcyBoYXMgYmVl
biB0aGUgZGVmYXVsdCBvbiB0aGUgTVRQLCBidXQgdGhpcyBpcyBjaGFuZ2luZyBhcyB0aGlzIGlz
Cj4gPiA+IGNhdXNpbmcgaXNzdWVzIHdoZW4gY29ubmVjdGVkIGRvd25zdHJlYW0gZnJvbSBhIGh1
YiAodGhlIHR5cGljYWwKPiA+ID4gZGV2ZWxvcG1lbnQgY2FzZSBmb3IgdGhlIHByaW1hcnkgVVNC
IHBvcnQgb2YgYSBwaG9uZSBsaWtlIGRldmljZSkgYW5kCj4gPiA+IG1vcmUgaW1wb3J0YW50bHkg
d2UgZG9uJ3QgaGF2ZSBzdXBwb3J0IGZvciB0aGUgUE1JQyBibG9ja3MgdGhhdCBjb250cm9sCj4g
PiA+IFZCVVMuCj4gPiAKPiA+IE15IHBvaW50IGlzIG5vdCBhYm91dCB3aGljaCBtb2RlIGlzIGN1
cnJlbnRseSBjaG9zZW4uICBJdCdzIG1vcmUgYWJvdXQKPiA+IHRoZSBjYXBhYmlsaXR5IG9mIGNo
b29zaW5nIHdoaWNoIG1vZGUgaXMgYXBwcm9wcmlhdGUgZm9yIGEgZ2l2ZW4KPiA+IHN5c3RlbSB2
aWEgRFQuCj4gPiAKPiA+ID4gT25jZSB0aGVzZSBpc3N1ZXMgYXJlIHJlc29sdmVkIHRoZSBkcl9t
b2RlIHdvdWxkIGJlICJvdGciLgo+ID4gCj4gPiBPVEcgZG9lc24ndCB3b3JrIG9uIHRoaXMgSC9X
LCBzbyB3ZSBuZWVkIHRvIHNwZWNpZnkgImhvc3QiIG1vZGUuCj4gCj4gSG93IGhhdmUgeW91IG1h
ZGUgdGhhdCBkZXRlcm1pbmF0aW9uPwoKSSBlbmFibGVkIE9URyBhbmQgcGx1Z2dlZCBpbiBhbGwg
b2YgdGhlIHRoaW5ncy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2Vz
IFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
