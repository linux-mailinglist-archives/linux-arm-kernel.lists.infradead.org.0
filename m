Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39F2F417A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 08:43:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUWHdjWtxaLeR72Idu3ADQff0ptR9vryXICbdlG3UrE=; b=LN0HBGpT4oa0YN
	9Q7qNXurWY4arHn8Hfu5oSqpb1s7KHKpZ3S7yvaOij8L0sP8CfavmohXET3SecA23FCkOyWJJk5Xb
	alXsaptTUTLnzyJU//ClEo3f2vjV1fwak44/OkoXUpRnBQq/EeNuZPRh9XsRgDLerL58ptwGaJZ2j
	i8WP0LgXrH4capK/uo02LfT+evfZu6XTvj0NViy/WZ1WtAGWvC2K2uNKyMVFo1opwb9pOyuGFf9IL
	hQASKq3m+bg0V7ZmRSeJDwcvnjmItc5NqXnA+QSkx7ghcgR6AK4IrO0weZon/uTMPrISIvb4S/R3R
	wejtWe78Q2CRHgaMVi6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSyvD-0004Hb-9f; Fri, 08 Nov 2019 07:43:07 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSyv6-0004HE-9T
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 07:43:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id i10so5846661wrs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 23:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=gNQtn7/uUN2ljx3dU/Odyrx4tv892gHBGI+Z3nZ9LAE=;
 b=AqCytg1X3jPH8kgfye9A9jb26I9SMoTFC+22F5Z1CyA3qarF0mZnlSuzvwb0qbQMNh
 p6nUXeqy2SAXn2BqmdUMXbMHmiqCvUrIrpZV+9BEwAFJa5QR8ENkHo3gNx1jkGOK6pw2
 8F2O4VDu/fgPfLNkpj6rf3BEvsg3oesPbqlR1fuqYEkCFOoP5zERf3x3qQErK9gFZVa+
 i1q39NN4t9jYLtqzXMYKNn1z2/9NUwQ/8v4nTJJsv6iZ6c8sFEreNfdb3zB/4lwA5jPb
 N0ZMhXUEALlO3YIOBxbBi7yZQR8o7o7hSCufXESr+QSJ2kFKTfckgSOF1G5NDeMhDRbV
 ZDKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=gNQtn7/uUN2ljx3dU/Odyrx4tv892gHBGI+Z3nZ9LAE=;
 b=bFEQUgtTkfrZHVwj+kCWxkWsoJ2sFSMB3hI1a571KmPiGymyG++5/c1YPRdKiMSX45
 jyjjgxF7bgjStnvZ+Py7cLOKafIBxBhnP8fhUj9eaVxQT/jsO8ojgklgcRpNjax/mm8w
 arVI3x26FDyj+zb4vVicNKCG4b4VXZ9lhBj0nOUh/HyQ9BY3Q1rD995qxErJbhEyNO78
 6QNmZfJOm21kRk9EEiDPldYluLoPAczbq8VKhqfzGjOCsooEAOzaVhPZRp0VarnUQvRf
 CDJzZASj2TyAT7MNXR4jdIpDtzx02xpKrCniIOctsf7ZOU0C95cFpJS9aBN+kLv7AUFA
 pkZQ==
X-Gm-Message-State: APjAAAWr6b+o/F+aK5e34Yda7a9ADruj4r/EmQhjhALRkwVH0RViKpBs
 OTT6XJWkVAOUJR5GBqvnBy+1ew==
X-Google-Smtp-Source: APXvYqxYjGaklh3lrhXXSL51hFVk11rNwqJLwFJ6E2Q13uV91J5H5IknfpzHN6C/DoGyNbBlcr1N9g==
X-Received: by 2002:a5d:5306:: with SMTP id e6mr5554996wrv.187.1573198978705; 
 Thu, 07 Nov 2019 23:42:58 -0800 (PST)
Received: from dell ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id a15sm4465660wrw.10.2019.11.07.23.42.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 23:42:58 -0800 (PST)
Date: Fri, 8 Nov 2019 07:42:55 +0000
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: Re: [PATCH 01/10] ASoC: max98090: remove 24-bit format support if RJ
 is 0
Message-ID: <20191108074255.GB18902@dell>
References: <20191107201702.27023-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107201702.27023-1-lee.jones@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_234300_337439_8D7BE7E5 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Yu-Hsuan Hsu <yuhsuan@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwNyBOb3YgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBGcm9tOiBZdS1Ic3VhbiBI
c3UgPHl1aHN1YW5AY2hyb21pdW0ub3JnPgo+IAo+IFsgVXBzdHJlYW0gY29tbWl0IDU2MjhjODk3
OTY0MmEwNzZmOTFlZTg2YzNiYWU1YWQyNTE2MzlhZjAgXQoKUGxlYXNlIGlnbm9yZSB0aGlzLCBp
dCB3YXMgbm90IG1lYW50IGZvciBwdWJsaWMgcmV2aWV3LgoKRm9yIHNvbWUgcmVhc29uIC0tc3Vw
cHJlc3MtY2M9YWxsIGJyb2tlIHdoZW4gdXBncmFkaW5nIHllc3RlcmRheS4KClNvcnJ5IGZvciB0
aGUgbm9pc2UuCgo+IFRoZSBzdXBwb3J0ZWQgZm9ybWF0cyBhcmUgUzE2X0xFIGFuZCBTMjRfTEUg
bm93LiBIb3dldmVyLCBieSBkYXRhc2hlZXQKPiBvZiBtYXg5ODA5MCwgUzI0X0xFIGlzIG9ubHkg
c3VwcG9ydGVkIHdoZW4gaXQgaXMgaW4gdGhlIHJpZ2h0IGp1c3RpZmllZAo+IG1vZGUuIFdlIHNo
b3VsZCByZW1vdmUgMjQtYml0IGZvcm1hdCBpZiBpdCBpcyBub3QgaW4gdGhhdCBtb2RlIHRvIGF2
b2lkCj4gdHJpZ2dlcmluZyBlcnJvci4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJv
IFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
