Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C531473791
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/yiFFW0Mp2Wb5U/V1puy1wRL+B2h9ionpudmQ1O2egQ=; b=rDs+AQk8ldGc7Z
	99XZklVE7Me7yVyKUo65PM1eWdbL898746AbxRBTzbwZmmAFdU/KDoy4eIgE3+RHri7EpbyxSQnHd
	igLKWr3U+W39qHHJ9YJaIiH95dkPRXKSfF+HeBX7O792kJzrHBpbkISzcwZgzz7P+ShfBfmwkS6rV
	lULaB/rwxoD6XL9+k6+DDjfxT6OmyCJ0XbS3Cid40DsKHTVJHUszdP3RdfAu/VgZr5ypr9vwabVJE
	TzpgOXyeWdzU7Xy8gGVzMShhFQBliGWGmt1x0QYftGcdFq6t5LzhJ2EOnhDg5HPQgx3mh4140od5L
	2Vl2bTsp/Gs+D3v4EhCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMih-0006kd-GE; Wed, 24 Jul 2019 19:14:35 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMiS-0006jy-Ga
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:14:21 +0000
Received: by mail-wm1-f68.google.com with SMTP id v15so42807243wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=+dgR7D/EXKyMHjC4KOvCZR7USJlIlrVgRqVtNiYm68A=;
 b=T+XG4CDbVNBTuLsrq3zKrL7rFEHpQAbJ78sPM7ldUbBfLXC73QviNwkruoZKe/zdJz
 B59mEINIO/szUVY3CBSfdLzLU9KeFYogc52ZZLVachHr6O1BW1RVVNGLPfyrWdi1sajQ
 rpts7IcepsD2U82tLt7O7CP1iVEqVeAlHtQMgOT2joApj11pj2UJ5Ev8msKTPwJIX+S1
 LJM11soeXXHs0ywD8T5ySTrGZIJmZXCvlg0pqKVhYhxwdWR7leQ9rDG2vNy3e1Bt1vC6
 8N4rYgNf+Hesbm0oFwukapawTi1i0Uh87dxDflVYXWp9pJTS3inW7b90rwgQ9RgLGnlA
 M6bQ==
X-Gm-Message-State: APjAAAU9DP/4ccft1xGTASO2yZxQ47b25QsBMlOtJxPpA3WzwsfaYJjd
 utU0jU7EFoFC1FBu1Jqbhlg=
X-Google-Smtp-Source: APXvYqxr0ifyhVtp91zsXaTGdqxuq3wdKwgnKuWnLCyxSECwcySUMHL3yuZ93uJZ/W8HD1t2wKkzTw==
X-Received: by 2002:a1c:a186:: with SMTP id k128mr69920564wme.74.1563995658727; 
 Wed, 24 Jul 2019 12:14:18 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id p6sm50559987wrq.97.2019.07.24.12.14.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 12:14:17 -0700 (PDT)
Date: Wed, 24 Jul 2019 21:14:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 04/11] devfreq: exynos-bus: Clean up code
Message-ID: <20190724191415.GG14346@kozik-lap>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122024eucas1p25a480ccddaa69ee1d0f1a07960ca3f22@eucas1p2.samsung.com>
 <20190723122016.30279-5-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-5-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_121420_554134_BB9DB4C2 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sw0312.kim@samsung.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MDlQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRzIG1pbm9yIGltcHJvdmVtZW50cyB0byB0aGUgZXh5bm9z
LWJ1cyBkcml2ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29u
QHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVz
LmMgfCA0OSArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQoKUmV2aWV3ZWQtYnk6IEty
enlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KCkJlc3QgcmVnYXJkcywKS3J6eXN6
dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
