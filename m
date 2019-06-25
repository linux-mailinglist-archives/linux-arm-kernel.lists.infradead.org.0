Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7B054E4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7My4HaLPpD4J3iHCzUHtk8N9dqAqgYCIypcB448dK9c=; b=nmXF/JuGw73On8
	WpR4lhYsZ74/xy+lMpuG4QgcYsJIlbql5hQ/BBbgLOaYaeYjHrjZWXkRZLGWSL+qe37CvXoVAvCsM
	5lwYWYUGwFhuPsg9h0gDIUPw0M85UsF3UyYyST/xpqomn0Mb58YOP6c6qc0F49l3yKiAKqFcXqiCL
	KkBgcxT2egk0LvoDzpA2JQ8nCtM5wUM45QV8DUMP1d1TlMYlyoVyWuf7EvkjecggKXfdgkF+4yYNu
	66jrHyaF1Uz+d2K2ciTTYYXhSv+BCKJc3z5s20OeiGilhzHtvOdaSvXW84KTm7L7T/TEJBMv2B0+t
	lhfI8+8UECwLkkVqfLyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkCj-0001jf-6b; Tue, 25 Jun 2019 12:05:41 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBQ-0008H9-45
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:21 +0000
Received: by mail-lf1-x142.google.com with SMTP id 136so12435652lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=h0u3VlCQ87CLZ6HEtUcmXW5gL9aGPSH4TbhKSlp9CRU=;
 b=xegko0byQ6cMXFS8OFdo9vt2kQrMcUrwvP0/ZRz4y1oV9bdCIJ8GqOUmdNMOi531IG
 cgnornaMN8hr/9xa2+g1JTDqrz/dUeJBJQRQVHKu4YqBKuxiTnKVS/+2DTh9oTsfmFVh
 gO0460T9mBKmHqygDm/VB6UWq1YgTuS0N8Z/VINaPi62s8GdX+wj9o0nDGp+96EGloSd
 4X/F+681siM9SxyQk1631P+VIAUd5Y8RmsdiSv3Vo/amvwDt0/gVmcmwZ4Hsplo1ami+
 obv0SZw4jzI+04av4bph5eBHHYCTaTkNT1TQO0ZKJxJpJOZl/sD+aW9cpBsLrNg86h9K
 gRzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=h0u3VlCQ87CLZ6HEtUcmXW5gL9aGPSH4TbhKSlp9CRU=;
 b=j4BVuvF8hB3rh0c2OE/8ZY5b+T7/rZGA+XLp0s6vaCSzU9QSwpB/NXEMI6PyiiW9EQ
 yP7xMWVRNh8YajxzUzR+REtOReBeUEN+0351hLALAdkO7EQ3fzSdJBQ6ymTeDnZZi87N
 zcKAlbmxq6KV8AAh5CPPeDIJCs0KCCf3JTltNhXu0AzcpWmc26/GAd8KYGfuUBE3n2lM
 ZGUhzxKW8G7GTfQYWp5I6DGf5tkFCdsA4zOKszTxgNLN/UkOfSm446meVZM6OndzSCdZ
 x374w3G+uAykHJSNJMnSfDzOT0dtYOyj360491rdrtTvo8wORkhsfTxgb9MR8XNycEQ+
 42zw==
X-Gm-Message-State: APjAAAVwNfE++GtDDYYcp1KwpTMeS7U8uk0eAVpZzWnbbhiqcyRETevb
 isn9ikxodpJMLfBLOoIDXoRSkg==
X-Google-Smtp-Source: APXvYqx6p6amI9NYHTP+LlTyto23uN5ap7trSnZuLdDGWzKzCCgFqqzUTNaDFrvy1Z3jRgKPb3QFRQ==
X-Received: by 2002:ac2:5467:: with SMTP id e7mr55181905lfn.23.1561464258309; 
 Tue, 25 Jun 2019 05:04:18 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y25sm2580753lja.45.2019.06.25.05.04.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:17 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:19:03 -0700
From: Olof Johansson <olof@lixom.net>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH 1/3] arm64 defconfig: enable LVM support
Message-ID: <20190625111903.6zeifvxv5cp53ndn@localhost>
References: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
 <20190619142142.52stwnyucxa7g3rz@localhost>
 <d1138486-4078-e838-ae49-fc9b038fc61c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1138486-4078-e838-ae49-fc9b038fc61c@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050420_225309_29CAA9FD 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 12:17:06PM +0200, Marcin Juszkiewicz wrote:
> W dniu 19.06.2019 o=A016:21, Olof Johansson pisze:
> > On Mon, Jun 17, 2019 at 06:04:09PM +0200, Marcin Juszkiewicz wrote:
> >> Follow x86-64 defconfig on enabling basic LVM support.
> >>
> >> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> > =

> > Do you need this to be =3Dy? If you use LVM, you usually boot with a ra=
mdisk that
> > will hold modules.
> =

> Right. Forgot to change.


Applied to arm/defconfig. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
