Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84ED21A4320
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 09:45:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EshmyAX1tDc+g816LDhK4OBSjDTELXBwIX8SkPrSIe0=; b=JDNXS8bf6UsrbM
	3dPXtqxuAGkyqgZeEck1+2SdGGfMn4a4IzJcQ8vU711cqD2dXKR1/P4yqMVZDO6REcddLpinPCyQ3
	9QY2hiHvS5VxLNgkZpNcXGKbZXvC2jVxZlmW7wNa2ceQ1GqRFuBy6RwoKrjzslaHMjlNRrfYdMqtQ
	iv1UGag6YGI0TW9tfwPXEV8I+tLs2BQois3Zq5bThVHHcr6xkmp0XdPvpsWCefcA4D6RAfeXAq/Z0
	y5OOBDUgRBcOJOSgUIZE01ovEarYO6tnB90EtW8ArZN8gyjN7mWRZmlE8CqPo0L6RsccijCLmDoMS
	ej/pXgX/therw1Zdnk8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMoLN-0002yC-6E; Fri, 10 Apr 2020 07:44:53 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMoLF-0002xq-SO
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 07:44:47 +0000
Received: by mail-oi1-x241.google.com with SMTP id d63so797027oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 00:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=kWTF/iK3b5Sk5JeUHvp98Y6uzIRDCjSO+zOeV+snwFg=;
 b=E2AWKS56FjZI1ulMBAgJoihDoWbZ8jgWGAUsyH559GWXe5gFIeG1pB2iN5UhZ04GBy
 deC4EHLDX4JUyOJYxJIH6nfKFYEGv5jJL90norCB/55Y2zwqi84NF0fXrWWJQLW1X9mC
 Rx6XCsw+34OiIwrcNkcqMxUFHx51zGnU0T9SuG2VEVpRtvSUbNqOgEMnpi32eB0ycj3w
 9LO5rc0m5sR3bvQ1bcvHmcxmu8zeulZ5m7kvrKSH0EKxbQMeYZRDuLSnLAzP+aab1xF1
 3MveE1X2iBtxpfRFXy+Jy5q4fBTz6bJIPnt8ReHewVivnAC/nvhGWDFg2v7iKV3+KL9Q
 HSnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kWTF/iK3b5Sk5JeUHvp98Y6uzIRDCjSO+zOeV+snwFg=;
 b=Kf+JoGbU8W0wsaJ6K2Yp+fE6b36zXmD1YOrIspcn35jyJeQhR6y9ZbioIm4aKTMBVk
 qZo2FkZuGORGIjLv+n7NHB7abVy4f9K4ZvC0cf8onNBVdjL7X3a3Lu6FyHsiv7Ea7CR9
 ddwjjgcnlW36EQSvjp5q9eouWayTXZiEwj9cq3SVRe9WykKiK40MdTVnKxvNk8eR2eQz
 r9WZQgU3LIAw4HYhluFPcGx8ZKmiYlSBvv/x3iHQzL1+xVWEWKdtfbQJEGB+f38gEXs2
 oc6Vd2EVvg4jP5NtO/LY/i9DwiY4CtQUsIXDMkLWx8OP3Y6IUg4aY1HtvU9JpIpQMiw3
 Mjww==
X-Gm-Message-State: AGi0Pub64p6r2ywHbpuMbU3aCgYHURLZOog2VoPKnka1EbotD3DGk8j2
 nVOMPSeRCz9EoellvgtEL+E=
X-Google-Smtp-Source: APiQypIgPHVdf7cXscxZNmG06PutggZYCLmyQWf/ZESoTnKqvn2liHmHeSgkvHLbppkxmXfoXy+xyQ==
X-Received: by 2002:aca:8ce:: with SMTP id 197mr2401139oii.35.1586504682521;
 Fri, 10 Apr 2020 00:44:42 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id w23sm825835otk.20.2020.04.10.00.44.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Apr 2020 00:44:41 -0700 (PDT)
Date: Fri, 10 Apr 2020 00:44:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200410074440.GA35316@ubuntu-s3-xlarge-x86>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CA+icZUWJLGfp-UVhXDaCR=Xnce7phE1ffPHC4RzM8mXPhBaV9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+icZUWJLGfp-UVhXDaCR=Xnce7phE1ffPHC4RzM8mXPhBaV9g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_004445_922350_317DC262 
X-CRM114-Status: GOOD (  26.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter.Smith@arm.com,
 stefan@agner.ch, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, manojgupta@google.com,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Jian Cai <caij2003@gmail.com>,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 ilie.halip@gmail.com, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, samitolvanen@google.com,
 "Eric W. Biederman" <ebiederm@xmission.com>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, jiancai@google.com,
 Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMDg6Mzg6MDVBTSArMDIwMCwgU2VkYXQgRGlsZWsgd3Jv
dGU6Cj4gT24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMToyOCBBTSBKaWFuIENhaSA8Y2FpajIwMDNA
Z21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBpd21teHQuUyBjb250YWlucyBYU2NhbGUgaW5zdHJ1
Y3Rpb25zIExMVk0gQVJNIGJhY2tlbmQgZG9lcyBub3Qgc3VwcG9ydC4KPiA+IFNraXAgdGhpcyBm
aWxlIGlmIExMVk0gaW50ZWdyYXRlZCBhc3NlbW1ibGVyIG9yIExMRCBpcyB1c2VkIHRvIGJ1aWxk
IEFSTQo+ID4ga2VybmVsLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEppYW4gQ2FpIDxjYWlqMjAw
M0BnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybS9LY29uZmlnIHwgMiArLQo+ID4gIGlu
aXQvS2NvbmZpZyAgICAgfCA2ICsrKysrKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL0tjb25m
aWcgYi9hcmNoL2FybS9LY29uZmlnCj4gPiBpbmRleCA2NmEwNGY2ZjQ3NzUuLjM5ZGU4ZmM2NGE3
MyAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL0tjb25maWcKPiA+ICsrKyBiL2FyY2gvYXJtL0tj
b25maWcKPiA+IEBAIC04MDQsNyArODA0LDcgQEAgc291cmNlICJhcmNoL2FybS9tbS9LY29uZmln
Igo+ID4KPiA+ICBjb25maWcgSVdNTVhUCj4gPiAgICAgICAgIGJvb2wgIkVuYWJsZSBpV01NWHQg
c3VwcG9ydCIKPiA+IC0gICAgICAgZGVwZW5kcyBvbiBDUFVfWFNDQUxFIHx8IENQVV9YU0MzIHx8
IENQVV9NT0hBV0sgfHwgQ1BVX1BKNCB8fCBDUFVfUEo0Qgo+ID4gKyAgICAgICBkZXBlbmRzIG9u
ICFBU19JU19DTEFORyAmJiAhTERfSVNfTExEICYmIChDUFVfWFNDQUxFIHx8IENQVV9YU0MzIHx8
IENQVV9NT0hBV0sgfHwgQ1BVX1BKNCB8fCBDUFVfUEo0QikKPiA+ICAgICAgICAgZGVmYXVsdCB5
IGlmIFBYQTI3eCB8fCBQWEEzeHggfHwgQVJDSF9NTVAgfHwgQ1BVX1BKNCB8fCBDUFVfUEo0Qgo+
ID4gICAgICAgICBoZWxwCj4gPiAgICAgICAgICAgRW5hYmxlIHN1cHBvcnQgZm9yIGlXTU1YdCBj
b250ZXh0IHN3aXRjaGluZyBhdCBydW4gdGltZSBpZgo+ID4gZGlmZiAtLWdpdCBhL2luaXQvS2Nv
bmZpZyBiL2luaXQvS2NvbmZpZwo+ID4gaW5kZXggMWMxMjA1OWUwZjdlLi5iMGFiMzI3MWU5MDAg
MTAwNjQ0Cj4gPiAtLS0gYS9pbml0L0tjb25maWcKPiA+ICsrKyBiL2luaXQvS2NvbmZpZwo+ID4g
QEAgLTE5LDYgKzE5LDEyIEBAIGNvbmZpZyBHQ0NfVkVSU0lPTgo+ID4gIGNvbmZpZyBDQ19JU19D
TEFORwo+ID4gICAgICAgICBkZWZfYm9vbCAkKHN1Y2Nlc3MsJChDQykgLS12ZXJzaW9uIHwgaGVh
ZCAtbiAxIHwgZ3JlcCAtcSBjbGFuZykKPiA+Cj4gPiArY29uZmlnIEFTX0lTX0NMQU5HCj4gPiAr
ICAgICAgIGRlZl9ib29sICQoc3VjY2VzcywkKEFTKSAtLXZlcnNpb24gfCBoZWFkIC1uIDEgfCBn
cmVwIC1xIGNsYW5nKQo+ID4gKwo+ID4gK2NvbmZpZyBMRF9JU19MTEQKPiA+ICsgICAgICAgZGVm
X2Jvb2wgJChzdWNjZXNzLCQoTEQpIC0tdmVyc2lvbiB8IGhlYWQgLW4gMSB8IGdyZXAgLXEgTExE
KQo+ID4gKwo+ID4gIGNvbmZpZyBDTEFOR19WRVJTSU9OCj4gPiAgICAgICAgIGludAo+ID4gICAg
ICAgICBkZWZhdWx0ICQoc2hlbGwsJChzcmN0cmVlKS9zY3JpcHRzL2NsYW5nLXZlcnNpb24uc2gg
JChDQykpCj4gPiAtLQo+ID4gMi4yNi4wLjExMC5nMjE4M2JhZjA5Yy1nb29nCj4gCj4gWWVzdGVy
ZGF5LCB3aGVuIGxvb2tpbmcgdHJvdWdoIGNvbW1pdHMgaW4gTGludXMgdHJlZSwgSSBzYXc6Cj4g
Cj4gImluaXQva2NvbmZpZzogQWRkIExEX1ZFUlNJT04gS2NvbmZpZyIKPiAKPiBOaWNrIGhhZCBh
IHBhdGNoc2V0IHRvIGRpc3Rpbmd1aXNoIExJTktFUiB2aWEgS2NvbmZpZyAoSSBjYW5ub3QgZmlu
ZAo+IGl0IHJpZ2h0IG5vdykuCgpQcm9iYWJseSByZWZlcnJpbmcgdG8gdGhpcz8KCmh0dHBzOi8v
Z2l0aHViLmNvbS9zYW1pdG9sdmFuZW4vbGludXgvY29tbWl0LzYxODg5ZTAxZjBlZDRmMDdhOWQ2
MzFmMTYzYmJhNmM2NjM3YmZhNDYKCj4gU28gd2Ugc2hvdWxkIGRvIGFsbCB0aGlzIHRoZSB3YXkg
Q0NfSVNfWFhYIENDX1ZFUlNJT04gaGFuZGxpbmcgaXMgZG9uZS4KPiAKPiBJIGp1c3Qgd2FudCB0
byBwb2ludCB0byBbMl0gd2hlcmUgd2UgY2FuIHJld29yayAoc2ltcGxpZnkpIHRoaXMKPiBoYW5k
bGluZyBmb3IgQ0MgYW5kIExEIGhhbmRsaW5nIGluIGEgZnVydGhlciBzdGVwLgo+IEluIG9uZSBv
ZiBQZXRlciBaLiB0cmVlIHNvbWVvbmUgc3RhcnRlZCB0byBkbyBzbyAoSSB3YXMgaW5zcGlyZWQg
YnkgdGhhdCkuCj4gCj4gVW5mb3J0dW5hdGVseSwgdGhlIGh1bmsgZnJvbSBbMV0gaXMgSU1ITyBh
IGJpdCBtaXMtcGxhY2VkIGFuZCBDQyBhbmQKPiBMRCBoYW5kbGluZyBzaG91bGQgc3RheSB0b2dl
dGhlcjoKPiAKPiBDQ19JU19YWFggd2hlcmUgWFhYIGlzIEdDQyBvciBDTEFORwo+IENDX1ZFUlNJ
T04gd2hlcmUgQ0MgaXMgR0NDIG9yIENMQU5HCgpBcmUgeW91IHN1Z2dlc3RpbmcgdW5pZnlpbmcg
R0NDX1ZFUlNJT04gYW5kIENMQU5HX1ZFUlNJT04gb3IgYW0gSQptaXN1bmRlcnN0YW5kaW5nIHdo
YXQgeW91IHdyb3RlIGhlcmU/IERvIHlvdSBtZWFuIFhYWF9WRVJTSU9OIHdoZXJlIFhYWAppcyBH
Q0Mgb3IgQ0xBTkc/Cgo+IExEX0lTX1hYWCB3aGVyZSBYWFggaXMgQkZEIG9yIEdPTEQgb3IgTExE
Cj4gTERfVkVSU0lPTgoKbGQuZ29sZCBpcyBubyBsb25nZXIgYWxsb3dlZCB0byBsaW5rIHRoZSBr
ZXJuZWwgc28gdGhlcmUgaXMgbm8gcG9pbnQgaW4KYWNjb3VudGluZyBmb3IgaXQgaW4gS2NvbmZp
Zy4gVGhhdCBsZWF2ZXMgb25seSBsZC5iZmQgYW5kIGxkLmxsZCB0bwphY2NvdW50IGZvci4gSSBk
byBub3QgdGhpbmsgdGhlcmUgaXMgYSBwb2ludCBpbiBhZGRpbmcgTERfSVNfQkZEOwohTERfSVNf
TExEIGNvdmVycyB0aGF0IHNpbmNlIHRoZXJlIGlzIG5vdCBhbm90aGVyIGxpbmtlciAoYXQgbGVh
c3QgdGhhdApJIGFtIGF3YXJlIG9mKSB0aGF0IGxpbmtzIHRoZSBrZXJuZWwuCgpDb21waWxlciBp
cyBkaWZmZXJlbnQgYmVjYXVzZSBpdCB0ZWNobmljYWxseSBoYXMgdGhyZWUgb3B0aW9ucyBpZiBp
Y2MKZXZlbiBzdGlsbCB3b3JrcyB0byBidWlsZCB0aGUga2VybmVsLgoKTERfVkVSSVNPTiBpcyBl
eHBsaWNpdGx5IGFuIGxkLmJmZCB0aGluZyBkdWUgdG8gdGhlIHdheSBsZC12ZXJzaW9uLnNoCmlz
IHdyaXR0ZW46CgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9zY3JpcHRzL2xkLXZlcnNpb24uc2gKClRoZXJlIGlz
IG5vdCBtdWNoIG9mIGEgcmVhc29uIHRvIHRyeSBhbmQgbWFrZSBMTEQgd29yayB3aXRoIHRoYXQg
Z2l2ZW4Kd2UgZG8gbm90IG5lZWQgaXQgbm93LiBJIGFtIG9mIHRoZSBtaW5kc2V0IHRoYXQgcHJv
YWN0aXZlbHkgY2hhbmdpbmcKc29tZXRoaW5nIG9ubHkgbWFrZXMgbGlmZSBtb3JlIGRpZmZpY3Vs
dCBkb3duIHRoZSByb2FkIGFuZCBtYWtlcyB0aGluZ3MKaGFyZGVyIHRvIG1haW50YWluLgoKV2Ug
Y291bGQgc3VnZ2VzdCByZW5hbWluZyB0aGF0IGNvbmZpZyB0byBHTlVfTERfVkVSU0lPTiBhbmQg
Z251LWxkLXZlcnNpb24uc2gKdG8gYmUgc2xpZ2h0bHkgbW9yZSBhY2N1cmF0ZSBidXQgSSBhbSBu
b3Qgc3VyZSB0aGF0IGlzIG5lY2Vzc2FyeSBzaW5jZQphZ2FpbiwgQ09ORklHX0xEX0lTX0xMRCB3
aWxsIGhhbmRsZSBhbnkgaW5jb21wYXRpYmlsaXRpZXMgdGhhdCB3ZQplbmNvdW50ZXIgd2l0aCBM
RF9WRVJTSU9OLCBqdXN0IGxpa2Ugd2UgZG8gd2l0aCBDTEFOR19WRVJTSU9OL0dDQ19WRVJTSU9O
LgpTZWUgbXkgY29tbWl0IGZvciB0aGUgX19nbnVfbWNvdW50X25jIHRoaW5nIGluIEFSTSBmb3Ig
YW4gZXhhbXBsZSBvZgp0aGF0IChDT05GSUdfQ0NfSVNfR0NDIHN0aWxsIG5lZWRzIHRvIGJlIHNw
ZWNpZmllZCkuCgpodHRwczovL2dpdC5rZXJuZWwub3JnL2xpbnVzL2IwZmU2NmNmMDk1MDE2ZTBi
MjM4Mzc0YzEwYWUzNjZlMWYwODdkMTEKCj4gSnVzdCBteSDigqwwLDAyLgo+IAo+IFJlZ2FyZHMs
Cj4gLSBTZWRhdCAtCj4gCj4gWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbGludXMvOTU1M2Qx
NmZhNjcxYjk2MjFjNWUyODQ3ZDA4YmQ5MGQzYmUzMzQ5Ywo+IFsyXSBodHRwczovL2dpdGh1Yi5j
b20vQ2xhbmdCdWlsdExpbnV4L2xpbnV4L2lzc3Vlcy85NDEKPiAKCkNoZWVycywKTmF0aGFuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
