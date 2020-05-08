Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2F31CB7F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 21:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2AkQ0XpVVAA9uWtiseBQ+YWFW27NOzW46QNfK8aBec=; b=EEXdlMyqkhl7VH
	OPQvtdCUvSJ6uJFGOvKpfNf7k1W12VOziQuJOKHzMb3f4Ei+R5sEz1dkqprcZAjcZJUUgk37Byazr
	/KHUmW8qJJEp2HD+0CkmLrkpbEuTez5uuPixTF5Karww5sRcUC6gqW+BGGQa8pMLbCibRSfOKI05F
	SfBJa7cJAiF+sWa3LdP3Jz7tb2yu+2R9B+6tdcB/hwxSVeCQ8tmPyWj6bzDN/Mz2BeUAVprYGVnZQ
	Csd0qKqhM5FEATTNozS0BfBEOQjKs+bknMmKsj5666gVxE2fK8To1px4TNKXpSBymqsw3aN/w0dux
	RlBshyE4qYwP/5VcSAFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX8Oo-0001Wa-8d; Fri, 08 May 2020 19:11:06 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX8OZ-0001Qr-J6
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 19:10:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id u16so11748955wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 12:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=omKZX10MZ7E8BREXjY7fVemXhJgx1E+OkiXELv9J4Oc=;
 b=ohlUBDD9WPMvEY8r2SP/T4+rUpwNUpbbIhyvu/4ATwmSWBEt522AHcdQNwLDpYgARK
 86WmbwW2incMQ1c6Sgc3cJri9Y4G2mQEsVdkxdC7dnuWGgOOkjWzt5n9Lxh96KweAnGZ
 av4iBGdazIFC+WX/a1Dxx3TnSQheR3+lljhEMBbtRuADGyhq8+30uk/v+jYR/1L8Cbxm
 AybJTjW8wiC1dVqUpPCjBdU6+yExSNGkDH1ENZyXb0fVGRdTHmn9WCBOm1iCAf7MVj+1
 h23W48JyUAAZ892OO3I+Z+VRqA/lnjPnLPfc+4GCe1hwXNFdQAVQDbo6rDyuKpcrH3AP
 qfdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=omKZX10MZ7E8BREXjY7fVemXhJgx1E+OkiXELv9J4Oc=;
 b=mWXtLOi2dPshhIlWv/QmIMN6C1Z51fQ213AlJOsS+B92IpFtCj8toychUa3QMdOQtT
 fS4OOyP3jqUQsDx0tGEkdxq3kNJcM+zRbF/pAqzj+WFE+0E4uRpNjtb3s2YUFAQpqvbp
 aXkXEsSEIaa3yXYXkA10hqbQDCs8KWMwemEf5QfLPGhAzot/uIqeumHGWD9BnGUgupRs
 R4lUH+Rn0Tf8VgKsqTl1vQbhEvwVNTzz5eioOOm97tYSDLDS41v+r1HiURzzuiePIsI2
 1u1ENeoQrekQaLRJqw5SFMOsWnSonGgJvOW+4V+jPcDEmbaJyq513fhecR8vVsmm9F/p
 y9FQ==
X-Gm-Message-State: AGi0PuY9R2jnQzS9tj9ebDpvTj1JcRqxtUvzIGNs1m+zNmV/8h4FGhog
 fpFuFdV6OmVOtOFdQT6zS4c=
X-Google-Smtp-Source: APiQypL5pOsX7sGxTrPsfJmqtLHlTiOGtTR8MmJH1hNB/UDH8xoxnGgNUsCnE5s0GcqJSt3Opn/qAA==
X-Received: by 2002:a1c:ab45:: with SMTP id u66mr17237438wme.152.1588965049864; 
 Fri, 08 May 2020 12:10:49 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:29ef:df7c:92a1:e024])
 by smtp.gmail.com with ESMTPSA id
 5sm14074670wmz.16.2020.05.08.12.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 12:10:49 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] arm64: dts: allwinner: h6: Enable CPU opp tables for
 Tanix TX6
Date: Fri,  8 May 2020 21:10:35 +0200
Message-Id: <20200508191035.24276-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508191035.24276-1-peron.clem@gmail.com>
References: <20200508191035.24276-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_121051_628969_55247F59 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBUYW5peCBUWDYuCgpBbHNvIGFkZCB0aGUgZml4ZWQg
cmVndWxhdG9yIHRoYXQgcHJvdmlkZWQgdmRkLWNwdS1ncHUgcmVxdWlyZWQgZm9yCkNQVSBvcHAg
dGFibGVzLgoKVGhpcyB2b2x0YWdlIGhhcyBiZWVuIGZvdW5kIHVzaW5nIGEgdm9sdG1ldGVyIGFu
ZCBjb3VsZCBiZSB3cm9uZy4KClRlc3RlZC1ieTogSmVybmVqIMWga3JhYmVjIDxqZXJuZWouc2ty
YWJlY0BnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xl
bUBnbWFpbC5jb20+Ci0tLQogLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgt
dHg2LmR0cyAgICAgIHwgMTMgKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtdGFuaXgtdHg2LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi10YW5peC10eDYuZHRzCmluZGV4IDgzZTZjYjBlNTljZS4uYmU4MTMzMGRiMTRmIDEwMDY0
NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgtdHg2
LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgt
dHg2LmR0cwpAQCAtNCw2ICs0LDcgQEAKIC9kdHMtdjEvOwogCiAjaW5jbHVkZSAic3VuNTBpLWg2
LmR0c2kiCisjaW5jbHVkZSAic3VuNTBpLWg2LWNwdS1vcHAuZHRzaSIKIAogI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgogCkBAIC0zNyw2ICszOCwxNyBAQAogCQlyZWd1bGF0b3It
bWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8
MzMwMDAwMD47CiAJfTsKKworCXJlZ192ZGRfY3B1X2dwdTogdmRkLWNwdS1ncHUgeworCQljb21w
YXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CisJCXJlZ3VsYXRvci1uYW1lID0gInZkZC1jcHUt
Z3B1IjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTEzNTAwMD47CisJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDExMzUwMDA+OworCX07Cit9OworCismY3B1MCB7CisJY3B1LXN1
cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1PjsKIH07CiAKICZkZSB7CkBAIC01Niw2ICs2OCw3IEBA
CiB9OwogCiAmZ3B1IHsKKwltYWxpLXN1cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1PjsKIAlzdGF0
dXMgPSAib2theSI7CiB9OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
