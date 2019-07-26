Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A04A76477
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tIYAT8R4qlXpbBsQtt/TLyVXWJySshP1YRMgo9Cxjxw=; b=lv2ReEq6fa1qFj
	tV2Gq/N7U6C/Q073jgdRg40mPF2MU9Biq2YQHWdDZXbt8xWVUBv1EMgZG8mLd8RkDHYzdq868Qqz3
	L5yAnXJYMdOwRnsvFtmQp3GeSJTwOk4Cpdpj2V1w743ga57KFOGGBsNNU0bu/oVFrjUiFtWgBgkec
	KdkfSOoGB8+L0jjVnxHTby51NTKdF5G2SeQBXGWHLdV9epXwE07hdExL/qUibO15NKKRAGqFytceB
	R4qNf356q4Snnffc5d8VxETnIPYUmygG7zPn7xWQqE1mbqVwq1UNcVuWzmdEGW5VDG5OUkdJ4die5
	dcWfMD1dZDBqrhe/oYCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyPJ-0002gS-P2; Fri, 26 Jul 2019 11:29:05 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyNr-0001lh-Tt
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:27:37 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so51065851lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VvJrkmi1Cwn8lyhtsQMDHS3PdPwEeGsIk+aMiHF32Hg=;
 b=iZQOA7Vh1AeiCmJRZYyWRcnNJw7mx3vuhfziN5xJyN0nCT7/YCjDyON4hFIJluzUUJ
 PBTIsl/eTYaLQkxKXopF6i/KGxtsqDXJcMB/A4YDGS1hE+Ki4Pr4zt6VHpzzflC6hsWp
 MISFZM1VeJsGmuRFCfMd+od6WxGiROAM528q+xZV79/evZBuTXs4Bs6m3pc8kaILzXkl
 Dd49j4aAP4LQVPeWFIsFLkYUEgriYpGKy0OLxZSgXv9oy5W5YMtOLGvb63AJ1gKU+swq
 iLHXB9AOquA7wCoGVyOLOjI/gWq4QRP24yyN1zU9HTy/B6iQs3Kc3OUWz7Y5syEkxwKc
 IXFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VvJrkmi1Cwn8lyhtsQMDHS3PdPwEeGsIk+aMiHF32Hg=;
 b=YI7wv66T/U0dbGF0AdgGd3lvdiopymXJXT8f2+ZGtI/eftlFYRHZn8svd90FrNapWv
 cqLI6op2m5IxZTBZbiNINIBRgvc08UEyTcy7hNXYOcG/oZWOJjeNIZ194YmsIpOiu/BR
 yV76bamNsUwOqrbzmDKki4DwZFkMYeArKPbY1cYZ4wi0+1ZDPptnYxyEHIsPNAdsP2+w
 y2snZy499jG0nB/qQ7cYjrqOBvT2yq5QDC6Yxq3GOuPH76Eolimpun0oxiPRP5VhdDEg
 HcUDsJ/msmSqTEOAKFRF5BRHgtabE7TdGrcEw1H3mrm55Iwj3QXGFzluWt69dJvO/9WZ
 DM4Q==
X-Gm-Message-State: APjAAAWGYfJL+QsVdN562qFV50xbvmXs3HC+NycYZWFy8i5t29BBhE5F
 SPl5bTyfyxk2HmvDG9h2pkGkzw==
X-Google-Smtp-Source: APXvYqy2DiXWMGAc7lrhMJwuj/3I02AlVEVzIwxTmJTwoNODqG05gW6+VZKwf3/2vqK/EXuRJ4PyAg==
X-Received: by 2002:a2e:2b57:: with SMTP id q84mr49315455lje.105.1564140452344; 
 Fri, 26 Jul 2019 04:27:32 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id i17sm8324734lfp.94.2019.07.26.04.27.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:27:31 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH 3/3] arm64: smp: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:27:25 +0200
Message-Id: <20190726112725.19204-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042736_119969_33283CCE 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Anders Roxell <anders.roxell@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9s
bG93aW5nIHdhcm5pbmcKd2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6CgpJbiBmaWxlIGluY2x1ZGVk
IGZyb20gLi4vaW5jbHVkZS9saW51eC9rZXJuZWwuaDoxNSwKICAgICAgICAgICAgICAgICBmcm9t
IC4uL2luY2x1ZGUvbGludXgvbGlzdC5oOjksCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9pbmNs
dWRlL2xpbnV4L2tvYmplY3QuaDoxOSwKICAgICAgICAgICAgICAgICBmcm9tIC4uL2luY2x1ZGUv
bGludXgvb2YuaDoxNywKICAgICAgICAgICAgICAgICBmcm9tIC4uL2luY2x1ZGUvbGludXgvaXJx
ZG9tYWluLmg6MzUsCiAgICAgICAgICAgICAgICAgZnJvbSAuLi9pbmNsdWRlL2xpbnV4L2FjcGku
aDoxMywKICAgICAgICAgICAgICAgICBmcm9tIC4uL2FyY2gvYXJtNjQva2VybmVsL3NtcC5jOjk6
Ci4uL2FyY2gvYXJtNjQva2VybmVsL3NtcC5jOiBJbiBmdW5jdGlvbiDigJhfX2NwdV91cOKAmToK
Li4vaW5jbHVkZS9saW51eC9wcmludGsuaDozMDI6Mjogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQg
bWF5IGZhbGwKIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogIHByaW50ayhLRVJO
X0NSSVQgcHJfZm10KGZtdCksICMjX19WQV9BUkdTX18pCiAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KLi4vYXJjaC9hcm02NC9rZXJuZWwvc21wLmM6MTU2OjQ6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhwcl9jcml04oCZCiAgICBwcl9jcml0KCJD
UFUldTogbWF5IG5vdCBoYXZlIHNodXQgZG93biBjbGVhbmx5XG4iLCBjcHUpOwogICAgXn5+fn5+
fgouLi9hcmNoL2FybTY0L2tlcm5lbC9zbXAuYzoxNTc6Mzogbm90ZTogaGVyZQogICBjYXNlIENQ
VV9TVFVDS19JTl9LRVJORUw6CiAgIF5+fn4KClJld29yayBzbyB0aGF0IHRoZSBjb21waWxlciBk
b2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJvdWdoLgoKRml4ZXM6IGQ5MzUxMmVmMGYwZSAoIk1h
a2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdhcm5pbmciKQpTaWduZWQtb2Zm
LWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFyby5vcmc+Ci0tLQogYXJjaC9h
cm02NC9rZXJuZWwvc21wLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9zbXAuYyBiL2Fy
Y2gvYXJtNjQva2VybmVsL3NtcC5jCmluZGV4IGVhOTBkM2JkOTI1My4uMDE4YTMzZTAxYjBlIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9zbXAuYworKysgYi9hcmNoL2FybTY0L2tlcm5l
bC9zbXAuYwpAQCAtMTUyLDggKzE1Miw4IEBAIGludCBfX2NwdV91cCh1bnNpZ25lZCBpbnQgY3B1
LCBzdHJ1Y3QgdGFza19zdHJ1Y3QgKmlkbGUpCiAJCQkJcHJfY3JpdCgiQ1BVJXU6IGRpZWQgZHVy
aW5nIGVhcmx5IGJvb3RcbiIsIGNwdSk7CiAJCQkJYnJlYWs7CiAJCQl9Ci0JCQkvKiBGYWxsIHRo
cm91Z2ggKi8KIAkJCXByX2NyaXQoIkNQVSV1OiBtYXkgbm90IGhhdmUgc2h1dCBkb3duIGNsZWFu
bHlcbiIsIGNwdSk7CisJCQkvKiBGYWxsIHRocm91Z2ggKi8KIAkJY2FzZSBDUFVfU1RVQ0tfSU5f
S0VSTkVMOgogCQkJcHJfY3JpdCgiQ1BVJXU6IGlzIHN0dWNrIGluIGtlcm5lbFxuIiwgY3B1KTsK
IAkJCWlmIChzdGF0dXMgJiBDUFVfU1RVQ0tfUkVBU09OXzUyX0JJVF9WQSkKLS0gCjIuMjAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
