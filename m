Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B0218F567
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRsVslew4SvJV0NlxbeqhVra/E0LOnwTpKv9mHB3k1k=; b=pA1ZKyEu+KOp1d
	W3U5fOkevFfDyQ4oq9JTeGF6HmUBDa5iR8a3xvYirrqFVEW/Hm/51hEkw81ffAYbdbdueWC8/3uHn
	ast1IVGLgUOhfkaNaIcGRYg6SXtYo9yLj+RoYr6aEuPz4gQA+GQGo49OllkiiAk9M2h13K4Eb3L2f
	G+Dxu75V6tqawrawqyPqpLrLfj4rj3wSjy/AcRqU6/SZJdmb2IJUnUh6nBaufXeY1DBJPhKjf46YH
	HjouxKzzJIS+PPCFNmQ6xotydrBE1ETABkkRIjtBYPoseke7bGp/GwRSZzSqtzR8gIcZLqiWceWLq
	dmyDdsuU/KRM5pQD7bVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMuV-0008Co-MQ; Mon, 23 Mar 2020 13:14:31 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMuM-0008CJ-Gg
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:14:23 +0000
Received: by mail-lf1-x142.google.com with SMTP id s1so10168942lfd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 06:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=E1CQtmDgklmhJ8UOqFgoAnNC1Hs9OG7/L9e38p9NJko=;
 b=cVXxLjLlZWbliitWGuklNFT8/b/ipWnER/MBOfcjIMh6YI2DcJv8Cyx9jCRtWTlFX3
 8aWb0xVZUcow9EfUHRy3WtM6HPg1oPk836709omTqABsL0Forp5JACWbxRI8++kjSIzC
 wrOo/5+HT5cgZSfM3tSXwty895eyCGY+SSforbkecWud+7Bj4zApFyUDQl/JcwxeGJUq
 xjglf2IYPC5ZQoCud4+sluk0Ba43iSiYtI3akVpKhQB4EKDbZzcyggCIseS2cMWwiNI0
 MkzPDPw2hazLDwi30/g7ayTZDBEBAatHOfs4FV4loFqVVBcbM/HU0T2F+l9VUf/2txtG
 va4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E1CQtmDgklmhJ8UOqFgoAnNC1Hs9OG7/L9e38p9NJko=;
 b=I6nKD+Zvxat6isXPx9CJFTshrWQj/eJhm7UdLYRCW24lvd0ZnTWbBOaXQnpXRVViTF
 iWHQODhg6ZE3b7Khqtmlbev/hChDQG5eDN5RxdEVGct5JZcoXV1gxJ9TSEvJH7l6d57M
 dWzXa7YMkKvXUV9laItQIY7CgEpVhVjSLCwS3h2JYZQ6lYGjIsGBVSCyDhRHr5PCmPx8
 Itym2DPONo7C8W+V0V+WTVMz3SK3bYtkoe98Ki5pexc+Ylz8BBZrqddLTCZZKjYr7HGq
 ToVS6U5MrIOiJ+ajakeFM1VBKrFNkwji8ik+/F6IAss3ogrzaEXRyp7qEqNfWD2dY6CO
 hSOg==
X-Gm-Message-State: ANhLgQ0E2DQKwgP/LZZCQBWlguQx+5VJ1TjRnMezuI4PyaszMJSQH0gZ
 LzcJtnZS2rZ64Pcjv7HmGu4NET3w
X-Google-Smtp-Source: ADFU+vsrHRmN74MSFYaqInYZvtueW7JY7IrqwVBW3ExHmXKgr3xW/dEG/H5kvPyo6PdChKHxXDQvNw==
X-Received: by 2002:a19:550e:: with SMTP id n14mr12877759lfe.141.1584969259348; 
 Mon, 23 Mar 2020 06:14:19 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id e14sm8399787ljb.97.2020.03.23.06.14.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2020 06:14:18 -0700 (PDT)
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
 <b5fb83d8-003c-d76b-9dac-7c8ef15f2ab1@gmail.com>
 <20200323110531.GD3883508@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <d57eaef9-65b9-23e5-e66b-9cea9df19fd5@gmail.com>
Date: Mon, 23 Mar 2020 16:14:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200323110531.GD3883508@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_061422_556515_B0A3C77D 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjMuMDMuMjAyMCAxNDowNSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4+PiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHRlZ3JhMjEwX2VtY19wbV9vcHMgPSB7Cj4+PiAr
CVNFVF9TWVNURU1fU0xFRVBfUE1fT1BTKHRlZ3JhMjEwX2VtY19zdXNwZW5kLCB0ZWdyYTIxMF9l
bWNfcmVzdW1lKQo+Pj4gK307Cj4+IFdoYXQgYWJvdXQgdG8gdXNlIHRoZSBkZWZhdWx0IHN1c3Bl
bmQvcmVzdW1lIGxldmVsPwo+IAo+IEkgZG9uJ3QgdW5kZXJzdGFuZC4gVGhpcyBpcyBhbHJlYWR5
IHRoZSBkZWZhdWx0IHN1c3BlbmQvcmVzdW1lIGxldmVsLAo+IGlzbid0IGl0PwoKUGxlYXNlIHVz
ZSBTSU1QTEVfREVWX1BNX09QUywgZm9yIGNsYXJpdHkuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
