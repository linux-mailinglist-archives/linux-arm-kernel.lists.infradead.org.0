Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2216186A8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yprz+AcacFit/MuFgUV/toFBttLW2WkySw5jWILE5RY=; b=CKY3WaMxZh77dJ
	49/Q4Q/QT+pIdEwdk2CTLKm03Ux0rNLGNmwyYRTjEW2eagkkCZw/MZ92fl96+mg4zYVW+/MsLWofK
	/C6ZTT1lWtGu9R6+X2hpRlgwkdUERCpX0Lvgqj82VmMLuY8BEErXxr9y2XnK78XaCNc0nyx4+w5tM
	IMIv8gC52onNhGINGizTYqvmlFkRMTASUVT4ugfICrua4ClnorQTqiX43ORoji9TogilkcUlJPawn
	80U6IM9Cr7p1WZ/L2BmSdClTjN9sx6GxRietaMAnXH6Crj9vN2FB1xSMljB812a+zBjblMVzK+RYS
	3eMuKjkBIi0IjWzEb4cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvo2k-0004SX-UL; Thu, 08 Aug 2019 19:25:46 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvo2c-0004S4-9c
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 19:25:39 +0000
Received: by mail-pl1-x62b.google.com with SMTP id c2so43917420plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 12:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ZG7Aiu7OQw3f16u3W7GLfaAF8S8vqKrbpAk/id0cgaA=;
 b=Jq5sVfKQ0hPrMipd9tzdgBE/vL9JwA87pRhTvAGhJ+gFsTDoc4nTfq8TTeXd+cQJOr
 /+HEtGw1xWZibB1tYeeur1Z9xJDMLYgh84oXhYniny9x/9g31Zy5HneeQONS5cKtT45b
 5d1x3crOYqm2FjoWj15VFI7D6HtdpA1WqtoR2k+YWu5xHbmkmR+9oFVOuP4LWArHfl/8
 KOrdouH2ST1edCO3dHMmTzDmBy1Af1n9HO2Iz3NaQOeB3AbHdDOdSSi3O7YToixYL03j
 sqSk4CyBuf6TUuwiXsv9PRYHKcdAdzo/+5ILhykGFg7q+hJj8uBiugX1cbWMrcJDCUqp
 IHWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=ZG7Aiu7OQw3f16u3W7GLfaAF8S8vqKrbpAk/id0cgaA=;
 b=lafpqbLzbSeg/vOUFsOOxBvlNdDq5I0IXn4LQe9x/PTbFaWAcLqF6ELufUPi7lbiOe
 DN7wiO9DYJzGSAHWopwPnLHOMO17itykJhA1mHmUPKKV4n3mR2SOInP1od+xPFHAEG+X
 RhJx5BZMHBzuZ9O4nmkUk9fs1fSKudKtR+xfSAMZPEmTsttHF9Z5GPJtv0TVaupTaKuB
 45o5hxM+VDs/Qv2th5kgqx99TQBUQtr4JW4d1QKfsf1Abp0TdKoywzaT+JO2DoBW9neu
 iYdehgEbLknadPs9A/flXmgxCl8nMgua+Az9HO7JvOZYHFAebFj2/D29VIcHf/1oCZIE
 tXoA==
X-Gm-Message-State: APjAAAVslBONMzRw0P1gKzm2aRxIxSB57tBAQWDsKY3EyT9mJvXaVqi6
 SzYAEESHjSQTL4TvSr6z6VQ=
X-Google-Smtp-Source: APXvYqzXtoL4CK4Jrf1h0ByToUo3gH/95WHymx6k/tyUsz16HcxxEhrxIW22Vilqk7ceZ9+THb0mzA==
X-Received: by 2002:a17:902:9041:: with SMTP id
 w1mr15581882plz.132.1565292336806; 
 Thu, 08 Aug 2019 12:25:36 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id u7sm86278852pgr.94.2019.08.08.12.25.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 12:25:36 -0700 (PDT)
Date: Thu, 8 Aug 2019 12:25:35 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Tao Zhou <tao.zhou1@amd.com>
Subject: Re: drm/amdgpu: replace readq/writeq with atomic64 operations
Message-ID: <20190808192535.GA18697@roeck-us.net>
References: <20190807025640.682-1-tao.zhou1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807025640.682-1-tao.zhou1@amd.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_122538_340744_1C5AF8A8 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, broonie@kernel.org, linux-next@vger.kernel.org,
 alexander.deucher@amd.com, akpm@linux-foundation.org, christian.koenig@amd.com,
 dennis.li@amd.com, hawking.zhang@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMTA6NTY6NDBBTSArMDgwMCwgVGFvIFpob3Ugd3JvdGU6
Cj4gcmVhZHEvd3JpdGVxIGFyZSBub3Qgc3VwcG9ydGVkIG9uIGFsbCBhcmNoaXRlY3R1cmVzCj4g
Cj4gU2lnbmVkLW9mZi1ieTogVGFvIFpob3UgPHRhby56aG91MUBhbWQuY29tPgo+IFJldmlld2Vk
LWJ5OiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+CgpSZWdhcmRpbmcg
dGhlIGNsYWltIHRoYXQgdGhpcyB3b3VsZCB3b3JrIGZvciAzMi1iaXQgeDg2IGJ1aWxkczoKCm1h
a2UgQVJDSD1pMzg2IGFsbG1vZGNvbmZpZwptYWtlIEFSQ0g9aTM4NiBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLm8KCnJlc3VsdHMgaW46CgogIC4uLgogIENDIFtNXSAg
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5vCmRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYzogSW4gZnVuY3Rpb24g4oCYYW1kZ3B1X21tX3Jy
ZWc2NOKAmToKZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jOjI3OTo5
OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYcmVhZHHigJk7Cgpk
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmM6IEluIGZ1bmN0aW9uIOKA
mGFtZGdwdV9tbV93cmVnNjTigJk6CmRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
ZXZpY2UuYzoyOTg6MzogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKA
mHdyaXRlceKAmQoKVGhpcyBpcyB3aXRoIG5leHQtMjAxOTA4MDguCgpHdWVudGVyCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
