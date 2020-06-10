Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7DA1F4B5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0zKpy4pNjY9m3uKdATWHhuMcInYK8uY7i85BrF1keu0=; b=rhRxlXn6bFNe4mRfxgL7vpIB8Z
	Tvm2LnG829lhLKUiwEkovDVN70OnDi6ISpELRMT+4YBxZFSWPlEw6UQaf8hPLZEgnEjh3JJz+sekl
	IKoed7YykaemNLBHfOSvOjL6B53/i2Zylt5+mLgIyAkf010da7xljITJPdLj9fsQ4ZamJSLL6sDDQ
	5OqFs6pK9Z1H8lLDm9Pap/yqqPhrydFQJtxLbxk7+z9Rto3Fo4Apd96bN0HFmRFgMJjhOkh2wkjnB
	5QgzhREQy2qy5xv2EtMfUY+tiioGqvVz2r9p5+PHasgZBiTouw9dzDzqgh7mUXpQQ8tcZITb7pQfi
	PJp9EJJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqOq-0001Qi-Ft; Wed, 10 Jun 2020 02:23:32 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqOj-0001QJ-7z
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:23:26 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d6so233357pjs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 19:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=jHeSUddA32B2eduTi1qXwNDxzJjrZCcCzMHGeBTM2yE=;
 b=SeQRnNQyzPCAgpGMdg26dUVg3jqXElJ0x/PJKZFtIuoe3Wml3m/UsPZXWsrJY973Nu
 DcqEFQx466/ZpftjEA3tZbqbaIyNts//EJffrR6DGdcZXiQQlZLS6/yC+fMYRWnt199v
 0hzZLFwVKmu758RgCJtWV+gmLmgyicPIq41rK/eKYhCigm4Nqu1iWn2xlMcQgy/g7DZO
 w3VtERV0waJbKBUrHrZulcpgT2kPNnwQs+TGgy6qwNYjfoR2O6pxPFG7RYIeRuIaZM2q
 TbE0zcdz2maHLo3yZdeHe1UrmaI0Tu4nDcuBKnoQZp+VNVX/udfrCcEq0ciSPps9rkpu
 dndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jHeSUddA32B2eduTi1qXwNDxzJjrZCcCzMHGeBTM2yE=;
 b=Zw5Qex220uy9RSC6rmxla05PVVHPXZBoD+qncy/RMXRGmmFSWEY6qRSs77lAMGVyyk
 3pSBBDBBJetxx99EHG7YeEXHvGcj16dVGIyV09Bkl+A5oPgKYcS0yi8UWADpy+3I5KjT
 TyECWxnvCeaVizsj1+ox9XhNSDKsOr92lRdPRCfVxWx/eU09S3TSE3MTbiFPdFf/7zmZ
 VrZOK6q3QL5AaimMVfLly9Zh2s45L8JaPnmmqCqDnglwIAEl/o1wHHnvZBF9i0ngjt36
 flFifY6xpJuGVggt1gCZNLPCQ9e9xaWDEjL6Sg2+HDgkjvFtFJ6vBn+OgID47o7iaejs
 Pafw==
X-Gm-Message-State: AOAM533FnjyJQKBKauyuYJNXDm3qVHxEOJhAH/3FaQcfEljDfVKYPKiw
 KIWB91rBxTkasOFxOEvb1Sw=
X-Google-Smtp-Source: ABdhPJysfragYbTihcd5EuVMIl48ya3K9aszbRpyiRPGqPCxakW0/aAAbk/O2vflOG78j0LnTsu+Vw==
X-Received: by 2002:a17:902:a505:: with SMTP id
 s5mr1129099plq.20.1591755804533; 
 Tue, 09 Jun 2020 19:23:24 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j12sm11145939pfd.21.2020.06.09.19.23.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 19:23:23 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: clock: bcm63xx: add 6318 gated clock
 bindings
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 julia.lawall@lip6.fr, f4bug@amsat.org, jonas.gorski@gmail.com,
 lkp@intel.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200609113049.4035426-2-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <add637f5-2ab8-5aa0-a36f-dc221624fbfc@gmail.com>
Date: Tue, 9 Jun 2020 19:23:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609113049.4035426-2-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_192325_280425_1DAF1486 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzkvMjAyMCA0OjMwIEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4g
QWRkIEJDTTYzMTggdG8gdGhlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIGdhdGVkIGNs
b2NrIGNvbnRyb2xsZXJzIGZvdW5kCj4gb24gQkNNNjN4eCBTb0NzLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CgpSZXZpZXdl
ZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tIApGbG9yaWFu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
